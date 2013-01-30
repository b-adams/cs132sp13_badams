//
//  main.m
//  Calculator
//
//  Created by Prof. Adams on 1/30/13.
//  Copyright (c) 2013 Prof. Adams. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        char userInput;
        Calculator* ti84 = nil;
        ti84 = [[Calculator alloc] init];
        
        while(YES)
        {
            printf("Press a key:");
            scanf(" %c", &userInput);
            [ti84 pressAKey:userInput];
            printf("Input: %c. Display: %d\n",
                   userInput, [ti84 numberOnTheScreen]);
        }
        
        
    }
    return 0;
}

