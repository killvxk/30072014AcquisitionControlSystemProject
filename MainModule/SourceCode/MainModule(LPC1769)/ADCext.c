#include    "ADCext.h"

// proveri prvo dali se dobro iskonfigurirani za vlezno/izlezni
//#define DOUT    IO1PIN & (0x01 << 16); // P1.16

/*************************************************************************
 * Function Name: average_ADC_data
 * Parameters: int
 * Return: float
 *
 * Description: Average Data from ADC 
 *************************************************************************/
int init_extern_ADC(int on_off, int speed){
  
// initialization of the ports (for digital communication)
	// P0.8 - CLK
	LPC_IOCON->PINSEL[0] 	&= ~(0x11 << 16); 	// set as GPIO
	LPC_GPIO->DIR 			|= (0x1 << 8);		// set as OUTPUT
	// P0.9 - DATA
	LPC_IOCON->PINSEL[0] 	&= ~(0x11 << 18);	// set as GPIO
	LPC_GPIO->DIR 			&= ~(0x1 << 9);		// set as INPUT

// the flowing code is not used in this hardware design ->
/*  if(on_off == ON){       // set Power
    ADC_EXT_ON;
  }else if(on_off == OFF){
    ADC_EXT_OFF;
  }else{
	  //invalid parameter forwarded to the routine
    return 0;
  };
  
  if(speed == ADC_12){    // set Speed
    ADC_EXT_12ms;
  }else if(speed == ADC_100){
    ADC_EXT_100ms;
  }else{
    //invalid parameter forwarded to the routine
    return 0;
  };*/
// <- end
  
  return 1;
}

/*************************************************************************
 * Function Name: takeDataADC_ADS1231
 * Parameters: void
 * Return: Int32S
 *
 * Description: Data from ADC (NO sleep)
 *************************************************************************/
int takeDataADC_ADS1231(void){
  
  int dataADC = 0;
  int x = 0; 
  
  if( ADC_EXT_SCLK_STATE != 0){
    
    ADC_EXT_SCLK_LOW; // clr SCLK (falling edge)
    
    while( ADC_EXT_SCLK_STATE != 0); // wait for falling edge
    
    for(x = 23; x >= 0; x--){  // take 24 bits    
      // SCLK 24
      ADC_EXT_SCLK;      
      dataADC |= ((ADC_EXT_DATA) << x); // take bit      
    }   
    
    // 25-ti SCLK
    ADC_EXT_SCLK_HIGH; // keep High SCLK
    
    // Ova mora da e tuka za da se dobivaat negativni vrednosti, vo sprotivno imame skok od 0ta na mnogu golema vrednost
    if((dataADC >> 23) == 1){ // negative value supplement (dopolnuvanej do 32bit za negativni vrednosti)
      dataADC |= 0xff000000;
    }
  
  }
  
  return dataADC;
}
