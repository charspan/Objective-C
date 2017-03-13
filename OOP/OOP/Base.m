//
//  People.m
//  OOP
//
//  Created by charspan on 13/03/2017.
//  Copyright © 2017 charspan. All rights reserved.
//

#import "Base.h"

@implementation Base
{
    NSString *_peopleName;//+号方法不能调用
    int _peopleAge;
    int _peopleSex;
}
static NSString *_peopleName1;
//老版本 需要成员变量和对应属性对接
//@synthesize peopleName=_peopleName;
// 重写初始化方法
- (instancetype)init
{
    self = [super init];
    if (self) {
        // 类内调用成员变量_XXX而不是属性,属性是给类外调用的
        _peopleName=@"张三";
        _peopleAge=12;
    }
    return self;
}
//- (void) setPeopleName:(NSString *)peopleName{
//    _peopleName=peopleName;
//}
//
//- (NSString*)getPeopleName{
//    return _peopleName;
//}
- (int) report{
    NSLog(@"-号: report");
    _peopleName = @"123";
    //[People report1];
    return 20;
}
+ (void) report1{
     NSLog(@"+号: report");
     //[[People alloc] report];
     _peopleName1=@"123";
}
- (int) showWithA:(int)a{
    return a;
}
- (int) showWithA:(int)a andB:(int)b{
    return a+b;
}
- (void)report3{
    NSLog(@"peopleName=%@",_peopleName);
    NSLog(@"peopleAge=%d",_peopleAge);
}
- (instancetype)initWithPeopleName:(NSString *)peopleName andPeopleAge:(int)peopleAge{
    self = [super init];
    if (self) {
        // 类内调用成员变量_XXX而不是属性,属性是给类外调用的
        _peopleName=peopleName;
        _peopleAge=peopleAge;
    }
    return self;
}
@end
