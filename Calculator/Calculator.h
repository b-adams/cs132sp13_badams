//
//  Calculator.h
//  Calculator
//
//  Created by Prof. Adams on 1/30/13.
//  Copyright (c) 2013 Prof. Adams. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
@property (assign) int numberOnTheScreen;
-(void) clearScreen;
-(void) pressAKey:(char) theKeyPressed;
@end
