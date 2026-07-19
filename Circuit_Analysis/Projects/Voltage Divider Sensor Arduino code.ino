// C++ code
const int LDR = A0;
void setup()
{
  Serial.begin(9600);
}

void loop()
{
  int value = analogRead(LDR);
  Serial.println(value);
  delay(500);
}