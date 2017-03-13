//
//  MyClass2.m
//  OOP
//
//  Created by charspan on 13/03/2017.
//  Copyright © 2017 charspan. All rights reserved.
//

#import "Father.h"

@implementation Father
- (void)report{
    _classInt=12;
    _classStr=@"my";
    NSLog(@"ClassName=%@",_className);
    NSLog(@"ClassInt=%d",_classInt);
    NSLog(@"_classStr=%@",_classStr);
}
@end
