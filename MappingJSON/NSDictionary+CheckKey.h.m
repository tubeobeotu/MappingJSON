//
//  NSDictionary+Utility.m
//  MappingJSON
//
//  Created by Nguyen Van Tu on 4/18/17.
//  Copyright © 2017 Nguyen Van Tu. All rights reserved.
//

#import "NSDictionary+CheckKey.h"

@implementation NSDictionary (CheckKey)
- (id)objectForKeyNotNull:(NSString *)key {
    id object = [self objectForKey:key];
    if ((NSNull *)object == [NSNull null] || (__bridge CFNullRef)object == kCFNull)
        return nil;
    
    return object;
}
@end
