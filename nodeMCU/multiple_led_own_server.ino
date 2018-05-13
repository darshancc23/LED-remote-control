#define _DISABLE_TLS_
#define THINGER_SERVER "server_ip_address"

#include <ESP8266WiFi.h>
#include <ThingerESP8266.h>

#define USERNAME "your_user_name"
#define DEVICE_ID "your_device_id"
#define DEVICE_CREDENTIAL "your_device_credential"

#define SSID "your_wifi_ssid"
#define SSID_PASSWORD "your_wifi_ssid_password"

ThingerESP8266 thing(USERNAME, DEVICE_ID, DEVICE_CREDENTIAL);

void setup() {
  pinMode(D1, OUTPUT);
  pinMode(D2, OUTPUT);
  pinMode(D3, OUTPUT);
  pinMode(D4, OUTPUT);

  thing.add_wifi(SSID, SSID_PASSWORD);

  
  thing["led1"] << digitalPin(D1); // digital pin control example (i.e. turning on/off a light, a relay, configuring a parameter, etc)

  thing["led2"] << digitalPin(D2);

  thing["led3"] << digitalPin(D3);

  thing["led4"] << digitalPin(D4);
  
  thing["millis"] >> outputValue(millis()); // resource output example (i.e. reading a sensor value)

}

void loop() {
  thing.handle();
}
