//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableString *numberString = [NSMutableString string];
    NSInteger min = MIN(number, otherNumber);
    NSInteger max = MAX(number, otherNumber);
    
    for (NSInteger i = min; i <= max; i++) {
        [numberString appendFormat:@"%ld", i];
    }
    
    return numberString;
    
}

@end
