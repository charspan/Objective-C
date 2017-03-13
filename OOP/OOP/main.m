//
//  main.m
//  OOP
//
//  Created by charspan on 13/03/2017.
//  Copyright © 2017 charspan. All rights reserved.
//

// Xcode tips: command + n 创建文件 类文件 cocoa Class
#import <Foundation/Foundation.h>
#import "Base.h"
#import "Encapsulation.h"
#import "Father.h"
#import "Son.h"
#import "ColorPrinter.h"
#import "BlackPrinter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 实例化对象
        // 调用方法[]: [类名 方法名(+)] 或者 [对象名 方法名(-)]
        // 实例化对象: 类名 对象名(*代表指针) = [[类名 alloc] init]
        // 或者 类名 对象名(*代表指针) = [类名 new] //不推荐这样做
        // alloc - 为对象分配内存空间
        // init - 进行初始化操作
        Base *p1=[[Base alloc] init];
        Base *p2=[Base new];
        // 打印内存地址
        NSLog(@"p1->%p",p1);
        NSLog(@"p2->%p",p2);
        
        // p1->_peopleName;
        p1.peopleName=@"张三";
        // 应该是自动生成的方法
        [p2 setPeopleName:@"李四"];
        NSLog(@"p1 %@",p1.peopleName);
        NSLog(@"p2 %@",p2.peopleName);
        
        int a = [p1 report];
        NSLog(@"a = %d",a);
        [Base report1];
        
        int aa = [p1 showWithA:10];
        NSLog(@"a = %d",aa);
        int b = [p1 showWithA:10 andB:20];
        NSLog(@"a = %d",b);
        
        [p1 report3];
        
        Base *p3 = [[Base alloc] initWithPeopleName:@"李四" andPeopleAge:23];
        [p3 report3];
        
        // 封装
        Encapsulation *m1=[[Encapsulation alloc] init];
        m1.className=@"我的类";
        // 使用指向来调用类中的公有成员变量
        m1->_classInt=1001;
        [m1 report];
        // 继承
        Father *m2=[[Father alloc] init];
        m2.className=@"myclass";
        [m2 report];
        Son *m3=[[Son alloc] init];
        m3.className=@"mysubclass";
        [m3 show];
        [m3 report];
        //多态
        ColorPrinter *cp= [[ColorPrinter alloc] init];
        [cp print];
        BlackPrinter *bp= [[BlackPrinter alloc] init];
        [bp print];
        //**
        Printer *pronter = [[ColorPrinter alloc] init];
        [pronter print];
    }
    return 0;
}
