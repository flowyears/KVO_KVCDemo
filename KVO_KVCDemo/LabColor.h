//
//  LabColor.h
//  KVO_KVCDemo
//
//  Created by 沈佳雄 on 15/3/16.
//  Copyright (c) 2015年 shenjx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LabColor : NSObject
@property (nonatomic) double lComponent;
@property (nonatomic) double aComponent;
@property (nonatomic) double bComponent;

@property (nonatomic, readonly) double redComponent;
@property (nonatomic, readonly) double greenComponent;
@property (nonatomic, readonly) double blueComponent;

@property (nonatomic, strong, readonly) UIColor *color;

@end
