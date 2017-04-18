//
//  Person.h
//  MappingJSON
//
//  Created by Nguyen Van Tu on 4/18/17.
//  Copyright © 2017 Nguyen Van Tu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicModel.h"
@interface Person : BasicModel
@property int personName;
@property NSString *personMiddleName;
@property NSString *personLastname;
@end
