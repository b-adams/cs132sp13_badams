/**
 @file main.m
 @author Prof. Adams
 @date 2013 01 18
 */

#import <Foundation/Foundation.h>

/**
 @brief Entry point for the program - sets up objects and puts everything in motion
 @returns EXIT_SUCCESS if all went well
 */
int main(void)
{
    
    @autoreleasepool {
        
        NSMutableArray* words=nil;
        NSLog(@"words, %@:\n%@", @"Uninitialized", words);
        
        words = [[NSMutableArray alloc] init];
        NSLog(@"words, %@:\n%@", @"Initialized", words);
        
        [words addObject:@"world"];
        NSLog(@"words, %@:\n%@", @"one added", words);
        
        [words addObject:@"Hello"];
        NSLog(@"words, %@:\n%@", @"two added", words);
        
        [words addObject:@", "];
        NSLog(@"words, %@:\n%@", @"all added", words);
        
        
        SEL sortingOrder = NULL;
        sortingOrder = @selector(localizedCaseInsensitiveCompare:);
        [words sortUsingSelector:sortingOrder];
        NSLog(@"words, sorted using %@:\n%@", NSStringFromSelector(sortingOrder), words);
        
        NSMutableString* word = nil;
        NSLog(@"word, %@:\n%@", @"Uninitialized", word);
        
        word = [[NSMutableString alloc] initWithString: [words objectAtIndex:0]];
        NSLog(@"word, %@:\n%@", @"Initialized", word);
        
        [word appendString:[words objectAtIndex:2]];
        NSLog(@"word, %@:\n%@", @"Post-append", word);
        
        [word insertString:[words objectAtIndex:1]
                   atIndex:0];
        
        word = [[NSString alloc] initWithFormat:@"%@%@", [words objectAtIndex:1], word];
        NSLog(@"word, %@:\n%@", @"Post-reformat", word);
        
    }
    return EXIT_SUCCESS;
}