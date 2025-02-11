/****************************************************/
/*                                                  */
/*   CS-454/654 Embedded Systems Development        */
/*   Instructor: Renato Mancuso <rmancuso@bu.edu>   */
/*   Boston University                              */
/*                                                  */
/*   Description: simple HelloWorld application     */
/*                for Amazing Ball platform         */
/*                                                  */
/****************************************************/

#include <p33Fxxxx.h>
//do not change the order of the following 3 definitions
#define FCY 12800000UL 
#include <stdio.h>
#include <libpic30.h>
#include <uart.h>

#include "lcd.h"
//#include "joystick.h"
#include "led.h" // For LED Macros
#include "xc.h" // For Nop() Function
#include "types.h"

/* Initial configuration by EE */
// Primary (XT, HS, EC) Oscillator with PLL
_FOSCSEL(FNOSC_PRIPLL);

// OSC2 Pin Function: OSC2 is Clock Output - Primary Oscillator Mode: XT Crystal
_FOSC(OSCIOFNC_OFF & POSCMD_XT); 

// Watchdog Timer Enabled/disabled by user software
_FWDT(FWDTEN_OFF);

// Disable Code Protection
_FGS(GCP_OFF);  

uint8_t joystick_counter;
uint8_t joystick_release; 
int joystick_stable = 0; 
int prev_stable = 0; 
int times_up = 0;

//int debounce(int threshold){
//    int i = 0;
//    while (PORTEbits.RE8 == 0){
//        if (i < threshold){
//            i++;
//        } else {
//            return 1;
//            joystick_counter++;
//        }
//    }
//    return 0;
//}

void init_timer(int period_val) {
    CLEARBIT(T1CONbits.TON);
    CLEARBIT(T1CONbits.TCS);
    CLEARBIT(T1CONbits.TGATE);
    TMR1 = 0x00;
    T1CONbits.TCKPS = 0b10;
    PR1 = period_val;
    IPC0bits.T1IP = 0x01;
    CLEARBIT(IFS0bits.T1IF);
    SETBIT(IEC0bits.T1IE);
    // SETBIT(T1CONbits.TON);
}

void __attribute__((__interrupt__)) _T1Interrupt(void) {
    times_up = 1;
    IFS0bits.T1IF = 0;
}

int debounce(int threshold){
    SETBIT(T1CONbits.TON);
    int i = 0;
    while(times_up == 0){
        if (PORTEbits.RE8 == 0) {
            i++;
            __delay_us(100);
        }
    }
    if (i > threshold) {
        times_up = 0;
        return 1;
    }
    times_up = 0;
    return 0;
}

int main(){
	/* LCD Initialization Sequence */
	__C30_UART=1;	
	lcd_initialize();
	lcd_clear();
	lcd_locate(0,0);
	lcd_printf("Jose\rNoah\rMing\r");

    /* LED Initialization Sequence */
    int8_t counter = 3; 
    
    led_initialize(); // Clears all LEDs
    /*
     * This code below works but I commented it out for testing the other parts
     * of the code without delay
     */

    while(counter > 0){
        SETLED(LED4_PORT); // Sets LED4 to 1 and turns it on
        __delay_us(1000000);
        CLEARLED(LED4_PORT); // Clears LED4 to 0 and turns it off
        Nop(); // Nop() is used between consecutive manipulations
        __delay_us(1000000);
        Nop();
        counter -= 1;
    }


    AD1PCFGHbits.PCFG20 = 1; // This needs to be set to 1 to place in digital mode
    TRISEbits.TRISE8 = 1; // Same for this one
    joystick_counter = 0;
    init_timer(50000); //init timer SOME ms period
    while(1){
        /* The code below checks if the fire button is pressed.
         * When Pressed the LED turns on, when released turns off
         */
        // CLEARLED(LED3_PORT);
        if (PORTEbits.RE8 == 0) {
            
            if (debounce(10000000000000) == 1) {
                SETLED(LED1_PORT);
                __delay_us(1000);
                joystick_counter++;
                lcd_clear();
                __delay_us(100);
                lcd_printf("%X\r", joystick_counter);
                lcd_printf("%d", joystick_counter);
                if (PORTDbits.RD10 == 1){
                    SETLED(LED3_PORT);
                    CLEARLED(LED2_PORT);
                }
                while(1){
                    if (PORTEbits.RE8 == 1) {
                        break;
                    }
                    if (PORTDbits.RD10 == 0) {
                        SETLED(LED2_PORT);
                        CLEARLED(LED3_PORT);
                    } else {
                        SETLED(LED3_PORT)
                    }
                    CLEARLED(LED2_PORT);
                    
                    
                }
                CLEARLED(LED3_PORT);
                CLEARLED(LED1_PORT);
                CLEARLED(LED2_PORT);
            }
        }
        if (PORTDbits.RD10 == 0) {
            SETLED(LED2_PORT);
            __delay_us(1000);
            CLEARLED(LED2_PORT);
        }
        if ((PORTEbits.RE8 == 1 && PORTDbits.RD10 == 0)) {
            SETLED(LED3_PORT);
            __delay_us(1000);
            CLEARLED(LED3_PORT);
        }
        
    }
    
	
	/* Do nothing */
	while(1){
		
	}
    
    return 0;
}


