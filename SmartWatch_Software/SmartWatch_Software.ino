#include "Declarations.h"

#define uS_TO_S_FACTOR 1000000ULL /* Conversion factor for micro seconds to seconds */
#define TIME_TO_SLEEP 60         /* Time ESP32 will go to sleep (in seconds) */

RTC_DATA_ATTR int bootCount = 0;

void setup()
{
  unsigned long chrono = micros();
#ifdef DEBUG
  Serial.begin(115200);
#endif
  printDebug("bootCount = " + String(bootCount));

  //init I2C communication
  Wire.begin(I2C_SDA, I2C_SCL, 100000);

  esp_sleep_wakeup_cause_t wakeup_reason;
  wakeup_reason = esp_sleep_get_wakeup_cause();

  //wakeup every 10 minutes, we'll use this for getting notification updates and things like that
  //  esp_sleep_enable_timer_wakeup(TIME_TO_SLEEP * uS_TO_S_FACTOR);

  //wakeup when someone touches the screen
  esp_sleep_enable_ext0_wakeup(GPIO_NUM_4, 0); //1 = High, 0 = Low

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
        printDebug("Woken up by timer");
        break;
      default:
        printDebug("Wakeup was not caused by deep sleep: " + wakeup_reason);
        break;
    }
  }

  printDebug("Going to sleep now");

#ifdef DEBUG
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
