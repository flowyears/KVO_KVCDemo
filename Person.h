//
//  Person.h
//  KVO_KVCDemo
//
//  Created by 沈佳雄 on 15/3/17.
//  Copyright (c) 2015年 shenjx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger  age;

- (void)changeName;
@end
