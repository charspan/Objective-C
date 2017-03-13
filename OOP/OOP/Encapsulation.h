//
//  MyClass.h
//  OOP
//
//  Created by charspan on 13/03/2017.
//  Copyright © 2017 charspan. All rights reserved.
//

#import <Foundation/Foundation.h>
// 封装
@interface Encapsulation : NSObject
{
    // 成员变量访问修饰符的问题
    // 默认 - 受保护 @protected
    // 公有 - 在类内类外都可以使用,并且可以被继承
    @public
    int _classInt;
    // 私有 - 在类内可以使用,类外无法访问,并且不可以被继承
    @private
    // 受保护 - 在类内可以使用,类外无法访问,并且可以被继承
    @protected
    NSString *_classStr;
    // 框架权限 - 在框架内相当于受保护,在框架外相当于私有
    @package
}
@property(nonatomic,strong)NSString *className;
// 方法是没有访问修饰符的
- (void)report;
@end
