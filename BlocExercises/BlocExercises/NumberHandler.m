//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    return @([number intValue] * 2);
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    NSMutableArray *numbers = [NSMutableArray new];
    NSInteger min = MIN(number, otherNumber);
    NSInteger max = MAX(number, otherNumber);
    
    for (NSInteger i = min; i <= max; i++) {
        [numbers addObject:[NSNumber numberWithInteger:(i)]];
    }
    
    return numbers;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    return [[arrayOfNumbers valueForKeyPath:@"@min.intValue"] intValue];
}

@end
