//
//  BasicModel.h
//  MappingJSON
//
//  Created by Nguyen Van Tu on 4/18/17.
//  Copyright © 2017 Nguyen Van Tu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDictionary+CheckKey.h"
#import "NSArray+CheckKey.h"
#import <objc/runtime.h>
@interface BasicModel : NSObject
- (instancetype)initWithJSONString:(NSString *)JSONString;
- (instancetype)initWithJSONDict:(NSDictionary *)JSONDict;
@end
