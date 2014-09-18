#ifndef __ADC_EXT
#define __ADC_EXT

#include "board.h" // definiranje na tipovi kako Int32S; Int16U; ...

// definicii za eksterniot ADC (koristeni za drajverot)
#define ADC_EXT_ON          //IO1SET = 0x00040000
#define ADC_EXT_OFF         //IO1CLR = 0x00040000
#define ADC_EXT_12ms        //IO1SET = 0x00080000 // 12.5 mS
#define ADC_EXT_100ms       //IO1CLR = 0x00080000 // 100 mS
                                                        //                ______
#define ADC_EXT_SCLK_HIGH   LPC_GPIO->SET = (0x1 << 8)  //SCLK high      |      |
#define ADC_EXT_SCLK_LOW    LPC_GPIO->CLR = (0x1 << 8)  //SCLK low   ____|      |____sclk
#define ADC_EXT_SCLK        LPC_GPIO->SET = (0x1 << 8); LPC_GPIO->CLR = (0x1 << 9)
#define ADC_EXT_DATA        ((LPC_GPIO->PIN & 0x0200) >> 9)
#define ADC_EXT_SCLK_STATE  ((LPC_GPIO->PIN & 0x0100) >> 8)

#define ON            1
#define OFF           0
#define ADC_12        1
#define ADC_100       0


int takeDataADC_ADS1231(void);
int init_extern_ADC(int on_off, int speed);

#endif
