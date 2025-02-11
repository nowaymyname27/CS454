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

int times_up = 0;
int times_up2 = 0;
int times_up4 = 0; 

uint16_t reset_counter_ms = 0; 
uint16_t reset_counter = 0; 

/* This code is for Timer 1*/
/*Given from lab manual*/
void init_timer1(int period_val) {
    //enable LPOSCEN
    
    __builtin_write_OSCCONL(OSCCONL | 2);
    T1CONbits.TON = 0; //Disable Timer
    T1CONbits.TCS = 1; //Select external clock
    T1CONbits.TSYNC = 0; //Disable Synchronization
    T1CONbits.TCKPS = 0b00; //Select 1:1 Prescaler
    TMR1 = 0x00; //Clear timer register
    PR1 = period_val; //Load the period value
    IPC0bits.T1IP = 0x01; // Set Timer1 Interrupt Priority Level
    IFS0bits.T1IF = 0; // Clear Timer1 Interrupt Flag
    IEC0bits.T1IE = 1;// Enable Timer1 interrupt
    T1CONbits.TON = 1;// Start Timer
}
/* This interrupt clears the LED2 and does a 1 second delay before turning it back on*/
void __attribute__((__interrupt__)) _T1Interrupt(void) {
    TOGGLELED(LED2_PORT);
    IFS0bits.T1IF = 0;
}
void init_timer2(int period_val) {
    //setup Timer 2
   
    T2CONbits.TON = 0;     //Disable time2
    T2CONbits.TCS = 0;     // select internal clock 
    T2CONbits.TGATE = 0;   //disable gated mode
    T2CONbits.TCKPS = 0b11; //Set 1:256 Prescaler
    TMR2 = 0x00;  //clear timer register
    PR2 = period_val; //Ser PR2 to period val
    IPC1bits.T2IP = 1; //Set Timer2 interrupt priority
    IEC0bits.T2IE = 1; // Enable Timer2 interrupt
    T2CONbits.TON = 1; // start timer2
    
  }


int t2_counter = 0; 
/* This interrupt clears the LED1 and does a 1 second delay before turning it back on*/
void __attribute__((__interrupt__)) _T2Interrupt(void)
{
    reset_counter_ms++; 
    t2_counter++; // increment t2 counter
    if (t2_counter >= 5){ // toggle LED1 every 5 ms
       
        TOGGLELED(LED1_PORT);
        t2_counter = 0; // rest counter
        
    }
    IFS0bits.T2IF = 0; // clear t2 interrupt flag
    
}

void init_timer3() {
    CLEARBIT(T3CONbits.TON);
    CLEARBIT(T3CONbits.TCS);
    CLEARBIT(T3CONbits.TGATE);
    TMR3 = 0x00;
    T3CONbits.TCKPS = 0b00;
    T3CONbits.TON = 1;
}




void init_timer4(int period_val) {
    CLEARBIT(T4CONbits.TON);
    CLEARBIT(T4CONbits.TCS);
    CLEARBIT(T4CONbits.TGATE);
    TMR4 = 0x00;
    T4CONbits.TCKPS = 0b10;
    PR4 = period_val;
    IPC6bits.T4IP = 0x01;
    CLEARBIT(IFS1bits.T4IF);
    SETBIT(IEC1bits.T4IE);
    // SETBIT(T1CONbits.TON);
}

void __attribute__((__interrupt__)) _T4Interrupt(void) {
    times_up4 = 1;
    IFS1bits.T4IF = 0;
}
/*
 * Comments for lab partners:
 * 
 * So I got the main logic for parts 1 to 3 done. There needs to be an
 * adjustment to the period to get the exact 5ms and 1 sec
 * requirements.
 * 
 * The way the code works is simple, the timer starts rigbt at the beginning,
 * LED 1 and 2 are turned on. The timers turn on and off the LEDs
 * using the interrupts. There is also a constant while loop for LED 4 for part 1
 * every time the main function loops.
 */
    
void __attribute__((__interrupt__)) _INT1Interrupt(void) {
    reset_counter_ms = 0;
    IFS1bits.INT1IF = 0;
}


/* Prints minutes, sec, ms in given format. input: ms*/
void print_time(uint16_t time){
    lcd_clear()
    uint16_t mins = time /60000; 
    uint16_t secs = (time % 60000) /1000;
    uint16_t ms = time % 1000;
    
    lcd_locate(0,0); 
    lcd_printf("%02u:%02u.%03u", mins, secs, ms);
}

void print_t3(){
    uint16_t cycle = TMR3; 
    float time_ms = (float)cycle / (12.8 / 1000.0); // convert to ms
    
    lcd_locate(0, 3);
    lcd_printf("%u ",cycle); 
    
    lcd_locate(0, 4);
    lcd_printf("%.4f", time_ms)
    TMR3 = 0; 
}



int main(){
	led_initialize();
    lcd_initialize(); 
    lcd_clear();
    lcd_locate(0,0);
            
    
    
    init_timer2(24); // Initializes the second timer using the parameter as the period
    init_timer1(32767); // Initializes the first timer using the parameter as the period
    
    
    
    AD1PCFGHbits.PCFG20 = 1; // This needs to be set to 1 to place in digital mode
    TRISEbits.TRISE8 = 1; // Same for this one
    IEC1bits.INT1IE = 1; //Interrupt Enable Control Register 1
    //External Interrupt 1 Enable bit
    IPC5bits.INT1IP = 1; //Interrupt Priority Control Register 5
    //External Interrupt 1 Priority bits
    
    INTCON2bits.INT1EP = 1; /*Interrupt Control Register 2 External
    Interrupt 1 Edge Detect Polarity Select bit*/
    
    init_timer4(50000);
    init_timer3(); 
    
    /*
    // Toggles LED4 every iteration
     * Task #1
    */
    while(1){
        reset_counter++; 
        TOGGLELED(LED4_PORT); // Toggle LED1(BIT ^= 1)
        if (reset_counter >= 25000){
            print_time(reset_counter_ms);
            reset_counter = 0;
            
        }

//        print_t3();
        
    }

    return 0;
}


