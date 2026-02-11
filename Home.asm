int pushButton = 8;  
int led = 12;        
  
int ledState = LOW;        
int lastButtonState;        
int currentButtonState;
  
void setup() {
  pinMode(pushButton, INPUT);  
  pinMode(led, OUTPUT);      
  
  currentButtonState = digitalRead(pushButton);
}
  
void loop() {
  lastButtonState = currentButtonState;               
  currentButtonState = digitalRead(pushButton); 
  
  if(lastButtonState == HIGH && currentButtonState == LOW)
  {
    if(ledState == LOW) 
    {
       ledState = HIGH;  
    }
    else
    {
      ledState = LOW;
    }
    digitalWrite(led, ledState);  
  }
}
