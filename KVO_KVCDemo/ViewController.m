//
//  ViewController.m
//  KVO_KVCDemo
//
//  Created by 沈佳雄 on 15/3/16.
//  Copyright (c) 2015年 shenjx. All rights reserved.
//

#import "ViewController.h"
#import "AuthorData.h"
#import "BookData.h"
#import "Person.h"
#import "PersonMonitor.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    AuthorData * author1 = [[AuthorData alloc] init];
//    [author1 setValue:@"tom" forKey:@"name"];
//    BookData * book1 = [[BookData alloc] init];
//    [book1 setValue:@"english" forKey:@"bookName"];
//    [book1 setValue:@"20.0" forKey:@"price"];
//    [book1 setValue:author1 forKey:@"author"];
//    
//    NSLog(@"value=%@",[book1 valueForKey:@"bookName"]);
//    NSLog(@"price=%f",[[book1 valueForKey:@"price"] floatValue]);
//    NSLog(@"author=%@",[book1 valueForKeyPath:@"author.name"]);

    //测试代码
    //监视对象
    Person *p =[[Person alloc] init];
    
    //观察者对象
    PersonMonitor *pm= [[PersonMonitor alloc]init];
    
    //Observer KVO收到通知指定的关键路径相对于接收器。
    /*
     *pm 对象注册KVO通知。观察者必须实现键值观察方法observeValueForKeyPath。
     *forKeyPath 关键路径,相对于接收器,用于观察的属性。这个值不能为零。
     *options NSKeyValueObservingOptions的组合值,指定包含在观察通知的内容。
     *context 任意的数据传递给anObserver在observeValueForKeyPath。
     */
    
    [p addObserver:pm forKeyPath:@"name" options:(NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld) context:@"hello world"];
    
    //测试前的数据
    NSLog(@"p.name is %@",p.name);
    
    //通过setvalue 的方法，PersonMonitor的监视将被调用
    [p setValue:@"name kvc" forKey:@"name"];
    
    //查看设置后的值
    NSLog(@"p.name is %@",[p valueForKey:@"name"]);
    
    //效果和通过setValue 是一致的
    p.name=@"name change by .name";
    
    //通过person自己的函数来更改 name
    [p changeName];
    //最后一次修改是直接修改，所以没法产生通知。只有当我们调用KVC去访问key值的时候KVO才会起作用
    NSLog(@"p.name is %@",p.name);
    
    //删除观察者
    //        [p removeObserver:pm forKeyPath:@"name"];
   // [p removeObserver:pm forKeyPath:@"name"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
