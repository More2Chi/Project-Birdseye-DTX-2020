/*
  Date 2020/8/20
  Title: NRF24 radio
  REPO: https://github.com/OLLYDOTDEV/Project-Birdseye-DTX-2020
  Description: create a testing platform for sendeding remote local data from one
  NRF24 radio to another. this code is and derived from
  http://tmrh20.github.io/RF24/gettingstarted_8cpp-example.html
  http://tmrh20.github.io/RF24/Transfer_8ino-example.html

  for the purpose of https://github.com/OLLYDOTDEV/Project-Birdseye-DTX-2020/issues/17
*/

#include "RF24.h"
#include "printf.h"

//  |Config|

RF24 radio(10, 9); // Set up nRF24L01 (makes OOP object) || RF24(_cepin _cspin )
// include needed libraries
#include <SPI.h>
 
const uint64_t pipes[2] = { 0xABCDABCD71LL, 0x544d52687CLL };   // radio address

// 1 byte can hold 1 character , there for the max amount of data that can be sent in one packect witht the NRF24 is 4bytes worth of character

bool TX = 1, RX = 0, Role = 0; // assign bool value to text representatives

// error values
byte Transmission_error = 0;
byte PacketSizeError = 0;

unsigned long startTime, stopTime;

bool Transmissiontime = false; // true means that the radio has been trying to tranmit for to long and failed

//---------
bool UnsentData = false;
char Serialdata = "0";

int radioread = 0;
bool received = false;
bool receiving = false;

// custom data types 
typedef struct // for Wireless_Receive packet 
{
  String Data; 
  }
Wireless_ReceiveDef;
Wireless_ReceiveDef Wireless_Receive;


typedef struct // for Wireless_Recieve Buffer 
{ 
  char Data[32];
  }
Buff_ReceiveDef ;
Buff_ReceiveDef Buff_Receive;

// --------------

typedef struct // for Wireless_Send packet 
{
  String Data; 
  }
Wireless_SendDef;
Wireless_SendDef Wireless_Send;

typedef struct // for Wireless_Send Buffer 
{
  char Data[32]; 
  }
Buff_SendDef;
Buff_SendDef Buff_Send;












// |---------|
// |Functions|
// |---------|


// 

// Role change


void TXF() {
  Serial.println(F("*** CHANGING TO TRANSMIT ROLE -- PRESS 'R' TO SWITCH BACK"));
  radio.stopListening();                  // Stop listening
  delay(10);
  radio.openWritingPipe(pipes[0]);
  radio.openReadingPipe(1, pipes[1]);
  Role = TX;
  delay(1000);
}
void RXF() {
  Serial.println(F("*** CHANGING TO RECEIVE ROLE -- PRESS 'T' TO SWITCH BACK"));
  delay(10);
  radio.openWritingPipe(pipes[1]);
  radio.openReadingPipe(1, pipes[0]);
  Role = RX;
  radio.startListening();                  // Start listening
  delay(1000);
}

void RECEIVE(){

 if(radio.available()) { // if there is information get prep for incomming otherwise 
    while(radio.available()){ // loop to read all the information in FIFO BUS
         radio.read(&Buff_Receive,sizeof(Buff_Receive));   
         received = true;
         Serial.println("receiving...\n");
        }
             
    String TempBuffString(Buff_Receive.Data); // This Varible must be declare here so that the String constructor is called
    Wireless_Receive.Data = TempBuffString;

    Serial.print("Packet Size: ");
    Serial.println(sizeof(Wireless_Receive));
    Serial.print("Packet Length: ");
    Serial.println(Wireless_Receive.Data.length());  
     
      if(received == true){       
        Serial.print("received: ");
        Serial.println(Wireless_Receive.Data);
        received = false;
       }
  }else{
       delay(100);
      Serial.println("\nNothing to Read in NRF24 Buffer\n");
       }   
}

void TRANSMIT(){
 // Wireless_Send.Data = "12341234123412341234123412341234"; // Set Max length temp data for testing
 Wireless_Send.Data = "Test Data " ;// set temp data for testing
 Serial.println("\nChecking Packet Integrity"); 
 // Checking for errors the packet that is to be sent
 if(Wireless_Send.Data.length() <= sizeof(Buff_Send.Data)){ // Stop overloading Char array with to large sized string
  
   for (byte i = 0;i <= Wireless_Send.Data.length(); i++) {
    Buff_Send.Data[i] = Wireless_Send.Data[i]; // String to char Array  
  }
  
 }else{
      PacketSizeError = 1;
      Serial.println("\n\n\n");
      Serial.println("Warning failed to convert string to array: String to large, please make sure that the String is smaller then char array ");
      Serial.println("\n\n\n");
      }
    
 if(sizeof(Buff_Send)> 32){ // add check for length of all varible in Datapak and make sure they are also under 32 
   PacketSizeError = 1;
   Serial.print("Buff Size: ");
   Serial.println(sizeof(Buff_Send));
   Serial.println("Failed to Send, Data Structure to Large");
  }

  
if(PacketSizeError == 0){
  
  Serial.println("\nPacket Integrity Verified \n\nTransmitting..."); 
  // handles transmission errors
  if(Transmission_error > 9){ // if error count great then 10 reset value
    Transmission_error = 0; 
   }
  if(Transmission_error == 0){
    startTime = millis();
    Transmissiontime == false;
   }
    // Sends data to Radio and then give feedback
   if(!radio.write(&Buff_Send, sizeof(Buff_Send))) { //Write to the FIFO buffers, also useds dynamic payload size
     Transmission_error++;                      //Keep count of failed payloads

     Serial.print("Transmission error number: ");
     Serial.println(Transmission_error); 

     if( Transmission_error > 9 || Transmissiontime == true){ // keeps trying to send data for 5 seconds
       Serial.println("\nChecking if other Radio is Transmitting ");
       RXF(); // change to 
    
       if(radio.available()){
         Serial.println("other radio transmitting waiting for available transmission slot");
         RECEIVE();
        }
         
        TXF();
        receiving = false;
       }
     }else{
          Serial.println("Transmission Successful\n");
          Serial.print("Packet Size: ");
          Serial.println(sizeof(Wireless_Send));
          Serial.print("Packet Length: ");
          Serial.println(Wireless_Send.Data.length());  
          Serial.print("transmitted: ");
          Serial.println(Wireless_Send.Data);
          Serial.print("\n");
          // Resets values for next Transmission
          UnsentData == false;
          Transmissiontime = false;
          Transmission_error = 0;
          }
    
     if(Transmission_error == 0) { // checks if there is a error while transmission of data 
      RXF();
      }else{
           stopTime = millis();
           delay(100); 
           
           if( stopTime - startTime  > 5000){ // did time to send take longer then 5 seconds
             delay(100);
             Serial.print("Time Taken: ");
             Serial.println(stopTime - startTime );
             Serial.println("Transmition is taking too long");
             Transmissiontime = true;
             }
            }
  
}else{ // Runs if Packet failed to make aending criteria
      PacketSizeError = 0;
      delay(1000);
     }
}




void Serialread(void) { // Serial override
  if(Serial.available()){
    Serialdata = toupper(Serial.read());
    if(Serialdata == 'T' && Role == RX){
      TXF();
    }else if(Serialdata == 'R' && Role == TX ){
            RXF();
           }
   }
}









void setup() {

  //Setup and configure rf radio//

  Serial.begin(115200);
  delay(2000); // allow time for start up
  printf_begin();
  Serial.println("Initialising embedded software"); // Debug for when the start up function runs
  radio.begin();  // called function to setup the radio.

  radio.setChannel(125); // select sport portion of the 2.4 gigahertz Spectrum it is broadcasting on in this case it is selected above the frequency of 2.4Ghz Wi-Fi thus was will not received interference.
  radio.setPALevel(RF24_PA_LOW); // will be reaplaced with RF24_PA_MAX for larger range & penetration

  radio.setDataRate(RF24_250KBPS); // less speed means great transmission stability (values can be [RF24_250KBPS, RF24_1MBPS, RF24_2MBPS])
  radio.setAutoAck(true); // enables autoACK  this is what autoACK is https://forum.arduino.cc/index.php?topic=504412.0
  
  radio.enableDynamicPayloads() ;
  radio.enableAckPayload();         

  radio.setRetries(1, 15);  // delay,(max 15) count(max 15)
  radio.setCRCLength(RF24_CRC_8);  // Cyclic redundancy check used for error-detecting

  radio.openWritingPipe(pipes[1]); // radio address
  radio.openReadingPipe(1, pipes[0]);

  radio.startListening();                  // Start listening
  radio.printDetails();                    // Dump the configuration of the rf unit for debugging || #include "printf.h" and also   printf_begin();

  radio.powerUp();                         //Power up the radio

  delay(1000);

  Serial.println("Initialising Main Program");
  Serial.println("defaulting RECEIVE State");
  Serial.println("\n *** R=RECEIVE | T=TRANSMIT ***");

  delay(1000);

  // debug
}
void loop() {
  Serialread(); // read if there is Serial information
  // Transmission Mode change
  if(UnsentData == true){ // Looks if there is data that needs to be tranmitted
     if(Role == TX){
     // do nothing as it will send data anyway also dont reset connect to other radio
     }else{
          TXF(); // makesure role to TX so that it can set
          }
   }

  //TX
  if(Role == TX){
    TRANSMIT();
   } // TX END
  //RX
  else if(Role == RX){
        RECEIVE();
        } 
} // end of loop
