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
    
    NSInteger i;
    NSMutableString *numberString = [NSMutableString string];
    
    if (number < otherNumber) {
        for (i = number; i <= otherNumber; i++) {
            [numberString appendFormat:@"%ld", i];
        }
    } else if (number > otherNumber) {
        for (i = otherNumber; i <= number; i++) {
            [numberString appendFormat:@"%ld", i];
        }
    } else {
        [numberString appendFormat:@"%ld", number];
    }
    
    return @"%@", numberString;
    
}

@end
