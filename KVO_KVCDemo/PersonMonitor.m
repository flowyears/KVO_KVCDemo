//
//  PersonMonitor.m
//  KVO_KVCDemo
//
//  Created by 沈佳雄 on 15/3/17.
//  Copyright (c) 2015年 shenjx. All rights reserved.
//

#import "PersonMonitor.h"

@implementation PersonMonitor
- (void)observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context
{
    if ([keyPath isEqual:@"name"])
    {
        NSLog(@"change happen,old:%@,new:%@;context=%@",[change objectForKey:NSKeyValueChangeOldKey],[change objectForKey:NSKeyValueChangeNewKey],context);
    }
}
@end
