//
//  BasicModel.m
//  MappingJSON
//
//  Created by Nguyen Van Tu on 4/18/17.
//  Copyright © 2017 Nguyen Van Tu. All rights reserved.
//

#import "BasicModel.h"

@implementation BasicModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (void)mapJSONToProterties:(NSDictionary *)JSON
{
    if (JSON) {
        NSArray *listProperties = [self allPropertyNames];
        //Loop method
        for (NSString* key in JSON) {
            NSString *currentKey = [listProperties checkKey:key];
            if(currentKey)
            {
                [self setValue:[JSON objectForKeyNotNull:key] forKey:currentKey];
            }
        }
    }
}
- (instancetype)initWithJSONString:(NSString *)JSONString
{
    self = [super init];
    if (self) {
        NSError *error = nil;
        NSData *JSONData = [JSONString dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary *JSONDictionary = [NSJSONSerialization JSONObjectWithData:JSONData options:0 error:&error];
        if(!error)
        {
            [self mapJSONToProterties:JSONDictionary];
        }
        
    }
    return self;
}
- (instancetype)initWithJSONDict:(NSDictionary *)JSONDict
{
    [self mapJSONToProterties:JSONDict];
    return self;
}
- (NSArray *)allPropertyNames
{
    unsigned count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    NSMutableArray *propertiesName = [NSMutableArray array];
    unsigned i;
    for (i = 0; i < count; i++)
    {
        objc_property_t property = properties[i];
        NSString *name = [NSString stringWithUTF8String:property_getName(property)];
        [propertiesName addObject:name];
    }
    
    free(properties);
    
    return propertiesName;
}

@end
