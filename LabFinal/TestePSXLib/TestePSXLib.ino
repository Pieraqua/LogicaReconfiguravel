#include <PsxLib.h>

#define spiClk 500000

#define DATAPIN 19
#define CMDPIN 23
#define CLKPIN 18
#define ATTPIN 5
#define DELAY 50

  Psx psx = Psx();
void setup() {
  psx.setupPins(DATAPIN, CMDPIN, ATTPIN, CLKPIN, DELAY);
  Serial.begin(115200);
}

void loop() {
  Serial.println(psx.read());
  delay(500);
}
