//
//  PersonFactory.h
//  FactoryDemo
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@interface PersonFactory : NSObject

+(Person *) personWithTask:(NSString *)task;

@end
