//
//  MyClass2.h
//  OOP
//
//  Created by charspan on 13/03/2017.
//  Copyright © 2017 charspan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Father : NSObject
{
    // 访问修饰符默认受保护
    @protected
    int _classInt;
    // 私有
    @private
    NSString *_classStr;
}
@property(nonatomic,strong)NSString *className;
- (void)report;
@end
