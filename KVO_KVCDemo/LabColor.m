//
//  LabColor.m
//  KVO_KVCDemo
//
//  Created by 沈佳雄 on 15/3/16.
//  Copyright (c) 2015年 shenjx. All rights reserved.
//

#import "LabColor.h"

@implementation LabColor
- (double)greenComponent
{
 return D65TristimulusValues[1] * inverseF(1./116. * (self.lComponent + 16) + 1./500. * self.aComponent);
}
@end
