//
//  MyClass.m
//  OOP
//
//  Created by charspan on 13/03/2017.
//  Copyright © 2017 charspan. All rights reserved.
//

#import "Encapsulation.h"

@implementation Encapsulation
- (void)report{
    _classStr=@"str";
    NSLog(@"ClassName=%@",_className);
    NSLog(@"ClassInt=%d",_classInt);
}
@end
