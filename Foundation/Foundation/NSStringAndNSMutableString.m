//
//  NSStringAndNSMutableString.m
//  Foundation
//
//  Created by charspan on 3/20/17.
//  Copyright © 2017 charspan. All rights reserved.
//

#import "NSStringAndNSMutableString.h"

@implementation NSStringAndNSMutableString

+ (void) OCNSString{
    char *s="Hello";
    NSString *str=@"Helllo";
    //oc c 字符串类型转换
    //c -> oc
    NSString *str1=[NSString stringWithUTF8String:s];
    NSLog(@"str1 = %@",str1);
    //oc -> c
    //char *str2=[str UTF8String];
    NSLog(@"str2 =%s",[str UTF8String]);
    
    //创建字符串 系统自动释放内存
    NSString *str3=@"IOS";
    //需要自己来释放内存
    NSString *str4= [[NSString alloc] init];
    str4=@"IOS";
    // *格式化字符串*
    int a=10;
    int b=20;
    //拼接字符串
    NSString *str5=[NSString stringWithFormat:@"a=%d b=%d",a,b];
    NSLog(@"str5 = %@",str5);
    NSString *str6=[str5 stringByAppendingString:str3];
    NSLog(@"str6 = %@",str6);
    // 大小写转换
    // A - 数字
    // 转化小写
    NSString *str7=@"aBCDef";
    NSString *str8= [str7 lowercaseString];
    NSLog(@"str8=%@",str8);
    // 转换大写
    NSString *str9= [str7 uppercaseString];
    NSLog(@"str9=%@",str9);
    //前缀和后缀的判断
    NSString *str10=@"www.baidu.com";
    BOOL hasPrefix=[str10 hasPrefix:@"www."];
    if(hasPrefix){
        NSLog(@"有对应前缀");
    }else{
        NSLog(@"没有对应前缀");
    }
    BOOL hasSuffix=[str10 hasSuffix:@".com"];
    if(hasSuffix){
        NSLog(@"有对应后缀");
    }else{
        NSLog(@"没有对应后缀");
    }
    //判断两个字符串是否相同
    NSString *str11=@"hello";
    NSString *str12=@"hello";
    if([str11 isEqualToString:str12]){
        NSLog(@"两个字符串一致");
    } else{
        NSLog(@"两个字符串不一致");
    }
    // 比较字符串
    // NSComparisonResult
    // 分割
    // 按照指定字符分割字符串
    NSString *str13=@"a,b,c,d,e,f,g";
    NSArray *strArray=[str13 componentsSeparatedByString:@","];
    for(NSString *str in strArray){
        NSLog(@"str = %@",str);
    }
    // 按照范围截取字符串
    NSRange rang=NSMakeRange(1, 5);
    NSString *str14=[str13 substringWithRange:rang];
    NSLog(@"str14 = %@",str14);
    // 从某一位开始截取后面的字符串
    NSString *str15=[str13 substringFromIndex:2];
    NSLog(@"str15 = %@",str15);
    // 从第一位开始截取到某一位的字符串
    NSString *str16=[str13 substringToIndex:7];
    NSLog(@"str16 = %@",str16);
    // 将字符串拆分为每一个字符
    for(int i=0;i<[str13 length];i++){
        NSLog(@"%c",[str13 characterAtIndex:i]);
    }
    // 查找
    NSString *str17=@"ab cd ef gh ij ab";
    // 查找指定字符串的位置
    NSRange rang1=[str17 rangeOfString:@"ab"];
    // 正向查找
    NSLog(@"rang1.location:%ld range1.length:%ld",rang1.location,rang1.length);
    // 替换
    NSString *str18=@"Hello ios,Hello baidu";
    NSString *str19=[str18 stringByReplacingCharactersInRange:NSMakeRange(0, 5) withString:@"你好"];
    NSLog(@"str19 = %@",str19);
    // 用自定字符串替换源字符串的子串
    NSString *str20=[str18 stringByReplacingOccurrencesOfString:@"Hello" withString:@"你好"];
    NSLog(@"str20 = %@",str20);
    
    // 读取文件
    // 文件来源:1.本地 2.网络文件
    // 路径类 NSURL
    NSString *str21=@"https://www.baidu.com/search/error.html";
    // 网络路径
    NSURL *httpURL=[NSURL URLWithString:str21];
    // 本地路径
    //NSURL *fileURL=[NSURL fileURLWithPath:str21];
    // 读取网络文件
    NSString *httpStr=[NSString stringWithContentsOfURL:httpURL encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"httpStr = %@",httpStr);
    // 读取本地文件
    NSString *fileStr=[NSString stringWithContentsOfFile:@"/Users/charspan/Desktop/charspan/SourceCode/Language/Objective-C/Foundation/test.txt" encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"fileStr = %@",fileStr);
    // 写入文件
    NSString *str22=@"Hello charspan";
    BOOL isOK = [str22 writeToFile:@"/Users/charspan/Desktop/charspan/SourceCode/Language/Objective-C/Foundation/test2.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSLog(isOK ? @"文件写入成功" : @"文件写入失败");
}

+ (void) OCNSMutableString{
    
}

@end
