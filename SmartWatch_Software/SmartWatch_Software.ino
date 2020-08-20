#include "Declarations.h"

#define uS_TO_S_FACTOR 1000000ULL /* Conversion factor for micro seconds to seconds */
#define TIME_TO_SLEEP 60         /* Time ESP32 will go to sleep (in seconds) */

RTC_DATA_ATTR int bootCount = 0;
RTC_DATA_ATTR boolean YWakeupCondition = false;
RTC_DATA_ATTR int YWakeupCount = 0;

void setup()
{
  unsigned long wakeupTime = micros();
  unsigned long chrono = micros();
#ifdef DEBUG
  Serial.begin(115200);
#endif
  printDebug("bootCount = " + String(bootCount));

  //init I2C communication
  Wire.begin(I2C_SDA, I2C_SCL, 100000);

  esp_sleep_wakeup_cause_t wakeup_reason;
  wakeup_reason = esp_sleep_get_wakeup_cause();

#ifdef ALLOW_ACCELEROMETER_WAKEUP
  //check every 200ms to see whether or not to wake up
  esp_sleep_enable_timer_wakeup(100000);
#endif

  //wakeup when someone touches the screen
  esp_sleep_enable_ext0_wakeup(GPIO_NUM_4, 0); //1 = High, 0 = Low

  pinMode(CHG_STAT, INPUT);
  pinMode(TOUCH_IRQ, INPUT);
  initTouch();

  if (getBatteryVoltage() < 3.2) {

    printDebug("Battery Voltage is too low to start device: " + String(getBatteryVoltage(), 3));
    pinMode(LCD_LED, OUTPUT);
    pinMode(LCD_EN, OUTPUT);
    digitalWrite(LCD_EN, HIGH);

    for (int a = 0; a < 3; a++) {
      digitalWrite(LCD_LED, HIGH);
      delay(100);
      digitalWrite(LCD_LED, LOW);
      delay(100);
    }

    //re-enable touch wakeup
    esp_sleep_enable_ext0_wakeup(GPIO_NUM_4, 0); //1 = High, 0 = Low

  } else {

    //the battery monitor only needs to be configured once when powered on.
    if (bootCount == 0)
    {
      notificationData[0] = 0;
      initTouch();
      initLCD();
      initBatMonitor();
      testScreen();
      tft.println("phone notifications obtained");
      //      getInternetTime();
      updateTimeFromNotificationData();
      tft.println("obtained time");

      printDebug("Battery Monitor initialized");

    }

    //Check if this is the first reboot and get ready to setup another sleep
    ++bootCount;

    switch (wakeup_reason)
    {
      case ESP_SLEEP_WAKEUP_EXT0:
        deviceActive = true;
        //if woken up by user touching screen
        initTouch();
        initLCD();
        MainLoop();
        break;
      case ESP_SLEEP_WAKEUP_EXT1:
        break;
      case ESP_SLEEP_WAKEUP_TIMER:
#ifdef ALLOW_ACCELEROMETER_WAKEUP
        if (readYAccel() > 2250) {
          YWakeupCondition = true;
        }
        if (YWakeupCondition && YWakeupCount < 5) {
          YWakeupCount++;
        } else {
          YWakeupCondition = false;
          YWakeupCount = 0;
        }
        if (
          readZAccel() > 2300
          && readXAccel() < 1920
          && readYAccel() < 1920
          && YWakeupCondition
        ) {
          printDebug(" ------ Woken up by accelerometer");
          deviceActive = true;
          //if woken up by timer
          initTouch();
          initLCD();
          MainLoop();
        }
#endif
        break;
      default:
        printDebug("Wakeup was not caused by deep sleep: " + wakeup_reason);
        break;
    }
  }

  printDebug("Going to sleep now");

#ifdef DEBUG
  printDebug("Awake for " + String(micros() - wakeupTime) + "uS");
  Serial.flush();
#endif
  //    if(connected){
  //          pClient->disconnect();
  //    }

  esp_deep_sleep_start();
}

void loop()
{
}
