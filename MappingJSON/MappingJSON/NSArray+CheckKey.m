//
//  NSArray+CheckKey.m
//  MappingJSON
//
//  Created by Nguyen Van Tu on 4/18/17.
//  Copyright © 2017 Nguyen Van Tu. All rights reserved.
//

#import "NSArray+CheckKey.h"

@implementation NSArray (CheckKey)
- (NSString *)checkKey:(NSString *)key
{
    for (NSString *currentKey in self) {
        if([[currentKey lowercaseString] isEqualToString:[key lowercaseString]])
        {
            return currentKey;
        }
    }
    return nil;
}
@end
