//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    NSString *favDrink = characterDictionary[@"favorite drink"];
    if (favDrink != nil && [favDrink isKindOfClass:[NSString class]]) {
        return favDrink;
    } else {
        return nil;
    }
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    NSMutableArray *favDrinks = [NSMutableArray array];
    
    for (NSDictionary *characterDictionary in charactersArray) {
        [favDrinks addObject:characterDictionary[@"favorite drink"]];
    }
    
    return favDrinks;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *mutableDictionary = [characterDictionary mutableCopy];
    if (mutableDictionary[@"quote"] == nil) {
        mutableDictionary[@"quote"] = @"Let's throw another shrimp on the barby!";
        return mutableDictionary;
    } else {
        NSLog(@"No quote needed.");
        return characterDictionary;
    }
}

@end
