#include <LiquidCrystal_I2C.h>

int LCD_SDA_PIN = 4;
int LCD_SCL_PIN = 5;
LiquidCrystal_I2C lcd(0x27, 2, 1, 0, LCD_SDA_PIN, LCD_SCL_PIN, 6, 7, 3, POSITIVE);

int PUMP_PIN = 13;
int SENSOR_PIN = 0;
float MOISTURE_RATIO = 0.5;
int PUMP_RUN_MS = 10 * 1000;
int SENSOR_MIN = 346;
int SENSOR_MAX = 628;
int MOISTURE_THRESHOLD = SENSOR_MIN + (SENSOR_MAX - SENSOR_MIN) * MOISTURE_RATIO;

unsigned long turnPumpOffAt = 0;
unsigned long lastPumpTime = 0;

void setup() {
  Serial.begin(9600);
  lcd.begin(20, 4);
  pinMode(PUMP_PIN, OUTPUT); //Set pin 13 as OUTPUT pin, to send signal to relay
  pinMode(SENSOR_PIN, INPUT); //Set pin 8 as input pin, to receive data from Soil moisture sensor.
}

void loop() {
  float val = analogRead(SENSOR_PIN);  //Read data from soil moisture sensor
  
  bool isDry = val > MOISTURE_THRESHOLD;
  bool pumpIsOn = turnPumpOffAt > 1;
  bool pumpShouldTurnOff = pumpIsOn && millis() >= turnPumpOffAt;
  bool runPump = isDry || (pumpIsOn && !pumpShouldTurnOff);
  
  // if we should run the pump and we're not running it already
  // start a count down timer to run the pump for
  // PUMP_RUN_MS ms.
  if (!pumpIsOn && runPump) {
    turnPumpOffAt = millis() + PUMP_RUN_MS;
    lastPumpTime = turnPumpOffAt;
  }
  
  if (runPump) {
    Serial.println("turning on pump");
    digitalWrite(PUMP_PIN, LOW);
  } else {
    Serial.println("turning off pump");
    digitalWrite(PUMP_PIN, HIGH);
    turnPumpOffAt = 0;
  }

  display(val, pumpIsOn, lastPumpTime, turnPumpOffAt);
  delay(100);
}

void display(int val, bool pumpIsOn, unsigned int lastPumpTime, unsigned int turnPumpOffAt) {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("sensor reading:");
  lcd.setCursor(16, 0);
  lcd.print(val);

  lcd.setCursor(0, 1);
  lcd.print("pump is on?");
  lcd.setCursor(12, 1);
  if (pumpIsOn) {
    lcd.print("yes");
  } else {
    lcd.print("no");
  }

  lcd.setCursor(0, 2);
  if (!pumpIsOn) {
    lcd.print("last on:");
    lcd.setCursor(9, 2);
    lcd.print(lastPumpTime);
  } else {
    lcd.print("off at:");
    lcd.setCursor(8, 2);
    lcd.print(turnPumpOffAt);
  }

  lcd.setCursor(0, 4);
  lcd.print("millis:");
  lcd.setCursor(8, 4);
  lcd.print(millis());
}
