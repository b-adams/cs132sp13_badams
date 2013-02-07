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
    if(isADigit(theKey))
    {
        int newDigit = theKey - '0';
        int oldNumber = [self numberOnScreen];
        int newNumber = 10*oldNumber + newDigit;
        [self setNumberOnScreen:newNumber];
    } else if(theKey=='c' || theKey=='C') {
        [self setNumberOnScreen:0];
    } else {
        NSLog(@"Uncovered argument '%c' in %@ message received by object at %p (%@)",
              theKey, NSStringFromSelector(_cmd), self, self);
    }
    
    
    return;
}


-(NSString*) description
{
    return [NSString stringWithFormat:@"Calculator with %d on screen.",
            [self numberOnScreen]];
}
@end

BOOL isADigit(char someChar) { return '0'<=someChar && someChar<='9'; }