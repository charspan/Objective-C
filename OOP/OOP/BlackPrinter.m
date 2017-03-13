//
//  BlackPrinter.m
//  OOP
//
//  Created by charspan on 13/03/2017.
//  Copyright © 2017 charspan. All rights reserved.
//

#import "BlackPrinter.h"

@implementation BlackPrinter
//方法重写
- (void)print{
    // 调用父类方法
    [super print];
    // 调用当前类方法
    //[self print];
    NSLog(@"我是黑白打印机");
}
@end
