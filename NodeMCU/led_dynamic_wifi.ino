#include <SPI.h>
#include <ESP8266WiFi.h>
#include <ThingerWifi.h>
#include <DNSServer.h>
#include <ESP8266WebServer.h>
#include <WiFiManager.h>

#define USERNAME "your_user_name"
#define DEVICE_ID "your_device_id"
#define DEVICE_CREDENTIAL "your_device_credential"


ThingerWifi thing(USERNAME, DEVICE_ID, DEVICE_CREDENTIAL);

void setup() {
  pinMode(D1, OUTPUT);
  pinMode(D2, OUTPUT);
  
  Serial.begin(115200);
  
  
  WiFiManager wifiManager;
  wifiManager.autoConnect("hotspot_mode_ssid");
  Serial.println("Connected to new Wifi...");

  // digital pin control example (i.e. turning on/off a light, a relay, configuring a parameter, etc)
  //Device 1
  thing["led1"] << [](pson & in) {
    if (in.is_empty()) {
      in = (bool) digitalRead(D1);
    }
    else {
      digitalWrite(D1, in ? HIGH : LOW);
    }
  };
  //Device 2
  thing["led2"] << [](pson & in) {
    if (in.is_empty()) {
      in = (bool) digitalRead(D2);
    }
    else {
      digitalWrite(D2, in ? HIGH : LOW);
    }
  };
  
 
  thing["millis"] >> outputValue(millis());  // resource output example (i.e. reading a sensor value)

}

void loop() {
  thing.handle();
}

