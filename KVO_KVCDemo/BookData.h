//
//  BookData.h
//  KVO_KVCDemo
//
//  Created by 沈佳雄 on 15/3/17.
//  Copyright (c) 2015年 shenjx. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AuthorData;

@interface BookData : NSObject
{
    NSString *bookName;
    float price;
    AuthorData *author;
}
@end
