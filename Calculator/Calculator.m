//
//  Calculator.m
//  Calculator
//
//  Created by Prof. Adams on 1/30/13.
//  Copyright (c) 2013 Prof. Adams. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
@synthesize numberOnTheScreen;

-(void) clearScreen
{
    [self setNumberOnTheScreen:0];
}

-(void) pressAKey:(char) theKeyPressed
{
    if(theKeyPressed == 'c')
    {
        [self clearScreen];
        return;
    }
    
    if(theKeyPressed<'0' ||
       theKeyPressed>'9')
    {
        NSLog(@"Invalid keypress: %c", theKeyPressed);
        return;
    }
    
    int theDigit;
    int theOldNumberFromScreen;
    int theNewNumberForScreen;
    
    theDigit = (theKeyPressed - '0');
    theOldNumberFromScreen = [self numberOnTheScreen];
    theNewNumberForScreen = theOldNumberFromScreen*10 + theDigit;
    [self setNumberOnTheScreen:theNewNumberForScreen];
}

@end
