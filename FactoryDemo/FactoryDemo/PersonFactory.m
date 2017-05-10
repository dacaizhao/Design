//
//  PersonFactory.m
//  FactoryDemo
//
//  Created by point on 2017/5/10.
//  Copyright © 2017年 dacai. All rights reserved.
//

#import "PersonFactory.h"
#import "IOSer.h"
#import "PHPer.h"

@implementation PersonFactory

+ (Person *)personWithTask:(NSString *)task {
    Person *person = nil;
    if ([task isEqualToString:@"php"]){
        person = [PHPer person];
        [person setWorkBlock:^(Person *person){
            PHPer *php = (PHPer *)person;
            [php job:@"去开发php"];
        }];
        
    }else if([task isEqualToString:@"ios"]) {
        
        person = [IOSer person];
        [person setWorkBlock:^(Person *person){
            IOSer *ios = (IOSer *)person;
            [ios job:@"去开发php"];
        }];
        
    }else {
        return person;
    }
    return person;
}

@end
