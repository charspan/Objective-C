//
//  People.h
//  OOP
//
//  Created by charspan on 13/03/2017.
//  Copyright © 2017 charspan. All rights reserved.
//

/*
 * : 代表继承
 */
#import <Foundation/Foundation.h>
// 姓名、年龄、性别
// 类内使用成员变量、类外使用属性
@interface Base : NSObject
//{
    //@public
    //NSString *_peopleName;
    //int _peopleAge;
    //int _peopleSex;
//}
// 属性为了让类外可以访问成员变量
// 属性就是成员变量的外部接口(java 中的 get、set)
 @property(nonatomic,strong)NSString *peopleName;
// 属性相当于以下两个方法
//- (void) setPeopleName:(NSString *)peopleName;
//- (NSString*)getPeopleName;
/*
 * -、+ 表示方法类型（-代表对象方法(用对象名调用)，+代表类方法(用类名来调)）
 * (+号、-号方法可以相互调用，+号方法不能调用成员变量)
 * (int) 代表函数返回值类型
 * :(int)x :代表有参数,(int)代表参数类型, x代表参数名
 * 函数名 去掉函数类型,去掉参数类型,去掉参数名剩下的就是函数名
 */
- (int) report;
+ (void) report1;
- (int) showWithA:(int)a;
// 函数名 showWithA: andB:
- (int) showWithA:(int)a andB:(int)b;
//初始化方法
//- (id) init;
- (instancetype) init;
- (void)report3;
- (instancetype)initWithPeopleName:(NSString *)peopleName andPeopleAge:(int)peopleAge;
@end
