//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    NSString *favoriteCheese = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];
    return favoriteCheese;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    
    if(cheeseRange.location != NSNotFound) {
        NSString *noCheeseHere = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@""];
        return noCheeseHere;
    } else {
        return cheeseName;
    }
    
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    
    NSString *cheeseString = (cheeseCount == 1 ? @"cheese" : @"cheeses");
    return [NSString stringWithFormat:@"%lu %@", (unsigned long)cheeseCount, cheeseString];
}

@end
