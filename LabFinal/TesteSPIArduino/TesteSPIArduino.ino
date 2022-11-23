#include <SPI.h>

#define spiClk 500000

void setup() {
  // put your setup code here, to run once:
  SPI.begin(19, 18, 23, 5);
  Serial.begin(115200);
  digitalWrite(SS, HIGH);
}

void loop() {
  // put your main code here, to run repeatedly:
  uint8_t dados[18] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

  copyDigitalPollCommand(dados);

  sendDataSPI(dados, 18);

  for(uint8_t i = 0; i < 18; i++)
  {
    Serial.print(dados[i], HEX); Serial.print(" ");
  }
  Serial.println();

  delay(500);
}

void sendDataSPI(uint8_t* dados, uint8_t len)
{
    SPI.beginTransaction(SPISettings(spiClk, LSBFIRST, SPI_MODE0));
    digitalWrite(SS, LOW);
    SPI.transfer(dados, len);
    digitalWrite(SS, HIGH);
    SPI.endTransaction();
}

void copyDigitalPollCommand(uint8_t* dados)
{
  const uint8_t pollCommand[18] = {0x01, 0x42, 0x00, 0, 0, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0};
  for(uint8_t i = 0; i < 18; i++)
  {
    dados[i] = pollCommand[i];
  }
}
