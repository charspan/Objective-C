//
//  main.m
//  BasicGrammar
//
//  Created by charspan on 26/02/2017.
//  Copyright © 2017 charspan. All rights reserved.
//

/*
 * 计算机 运算器+控制器
 *
 * 基本数据类型:int(不初始化值为零,占据4个字节)、float、double(8字节)、char(1个字节)
 * long(就是long int在 oc 里面相当于 int 因为都是4字节)、long long int(8字节)、short（就是 short int,2字节）、unsigned（int 0~255）、signed(int -128~127)、指针类型、自定义类型、万能类型 id
 * 算术表达式与运算符
 * =:表示赋值
 * 一元运算符:++、--
 * 二元运算符: +、-、*、/、%
 * 三目运算: 2>3?YES:NO
 * 逻辑运算符:>、<、>=、<=、==
 *
 * 语法
 * 条件控制语句:
 * 判断语句:if(condition){}else{} 或者
 * if(condition1){}else if(condition2){}...else if(conditionn){}...else{}
 * 条件只要不是0就代表真,0代表假
 * 强制跳转语句: label:{} goto lable; //一般情况下不建议使用该语法
 * 循环语句: while (condition) {} 或者
 * for (<#initialization#>; <#condition#>; <#increment#>) {} 或者
 * do {} while (<#condition#>);
 * 打破循环: break(终止整个循环);continue(跳过当前这一次循环);
 * 多分支语句:expression 与 constant 相等就会执行 statements,
 * 然后遇到 break 直接跳出整个语句
 * switch (expression) {
 *   case constant:
 *         statements
 *   break;
 *   ...
 *   default:
 *   break;
 * }
 */
/* 使用 Xcode 的 tips
 * option + 左键 查看提示信息
 */
//导入一个库
#import <Foundation/Foundation.h>

// 函数声明: 返回值 函数名(参数类型 参数名...){}
/*
 * 求矩形面积的函数 area=width*height
 */
double getRectangleArea(double width,double height){
    double area=width*height;
    return area;
}
/*
 * 求正方形面积函数 area=a*a
 */
double getSquareArea(double a){
    return getRectangleArea(a, a);
}

/*
 * 打印 show
 */
void show(){
    NSLog(@"show");
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog()控制台打印方法
        NSLog(@"这是我让 objective-c 语言输出的第一行字符串");
        //if条件语句
        int a=1,b=2;
        if(a>b){
            NSLog(@"a>b");
        }else if(a<b){
            NSLog(@"a<b");
        }else{
            NSLog(@"a=b");
        }
        //goto跳转语句
        int i=0;
    a:{
        i++;
        NSLog(@"i=%d",i);
    }
        if(i<5){
            goto a;
        }else{
            NSLog(@"goto 语句跳转结束");
        }
        //while循环语句
        int j=0;
        while(j<5){
            j++;
            NSLog(@"j=%d",j);
        }
        //for循环语句
        for (int k; k<=5; k++) {
            NSLog(@"k=%d",k);
        }
        //do{}while();语句 do{} 的内容至少会执行一次
        int l=0;
        do{
            l++;
            NSLog(@"l=%d",l);
        }while(l<5);
        //break 打破循环(终止整个循环) 可以用与任何循环语句
        for (int k; k<=5; k++) {
            if(k>2){
                break;
            }
            NSLog(@"k=%d",k);
        }
        //continue 打破循环(跳过当前这一次循环) 可以用与任何循环语句
        for (int k; k<=5; k++) {
            if(k%2){
                continue;
            }
            NSLog(@"k=%d",k);
        }
        //多分支语句 switch 可以放 char 和 int 类型
        int m=1;
        switch (m) {
            case 1:
                NSLog(@"m=1");
                break;
            case 2:
                NSLog(@"m=2");
                break;
            case 3:
                NSLog(@"m=3");
                break;
            default:
                NSLog(@"m的值超出范围");
                break;
        }
        //实际开发 switch 用法,不用 break 后
        int n=2;
        switch (n) {
            case 1:
                //NSLog(@"n=1");
                //break;
            case 2:
                NSLog(@"n大于等于1且小于等于2");
                //NSLog(@"n=2");
                break;
            case 3:
                NSLog(@"n=3");
                break;
            default:
                NSLog(@"n的值超出范围");
                break;
        }
        //函数调用
        double area=getRectangleArea(4.2, 1.2);
        NSLog(@"当前矩形面积=%f",area);
        show();
        //在命令行中执行 ./BasicGrammar -a -l -j
        NSLog(@"argc=%d",argc);
        for(int i=0;i<argc;i++){
            NSLog(@"%s",argv[i]);
        }
    }
    return 0;
}
