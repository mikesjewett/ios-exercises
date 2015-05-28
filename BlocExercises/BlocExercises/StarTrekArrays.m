//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    NSArray *trekkies = [characterString componentsSeparatedByString:@";"];
    return trekkies;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {

    NSString *trekkie = [characterArray componentsJoinedByString:@";"];
    return trekkie;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
    return [characterArray sortedArrayUsingDescriptors:@[sortDescriptor]];

}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'Worf'"];
    
    NSArray *onlyWorf = [characterArray filteredArrayUsingPredicate:containsWorf];
    
    return onlyWorf.count > 0;
}

@end
