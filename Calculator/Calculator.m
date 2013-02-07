#import "Calculator.h"

@implementation Calculator
@synthesize numberOnScreen;
@synthesize numberAccumulated;
@synthesize operationPending;

- (id)init
{
    self = [super init];
    if (self)
    {
        //Set up initial calculator conditions here
    }
    return self;
}

-(void) pressKey:(char)theKey
{
    NSLog(@"STUB response to '%@' message received by object at %p (%@)",
          NSStringFromSelector(_cmd), self, self);
    
    int newDigit = theKey - '0';
    int oldNumber = [self numberOnScreen];
    int newNumber = 10*oldNumber + newDigit;
    [self setNumberOnScreen:newNumber];
    
    return;
}


-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %d on screen.",
            [self numberOnScreen]];
}
@end
