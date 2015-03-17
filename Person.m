//
//  Person.m
//  KVO_KVCDemo
//
//  Created by 沈佳雄 on 15/3/17.
//  Copyright (c) 2015年 shenjx. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name,age;

- (void)changeName
{
    name = @"changeName directly";
}
@end
