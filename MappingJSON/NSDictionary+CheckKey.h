//
//  NSDictionary+Utility.h
//  MappingJSON
//
//  Created by Nguyen Van Tu on 4/18/17.
//  Copyright © 2017 Nguyen Van Tu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (CheckKey)
- (id)objectForKeyNotNull:(id)key;
@end
