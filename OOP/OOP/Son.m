//
//  MySubClass2.m
//  OOP
//
//  Created by charspan on 13/03/2017.
//  Copyright © 2017 charspan. All rights reserved.
//

#import "Son.h"

@implementation Son
- (void) show{
    //父类中的私有变量无法继承
    // 如果被继承下来的父类方法中使用的私有变量,那么子类对该父类私有变量的操作同继承的方法一样,但是无法在子类中直接调用
    //_classStr=@"213";
    _classInt=13;
    NSLog(@"show - %d",_classInt);
    // 如果父类中的方法没有写声明则子类无法继承该方法
}
@end
