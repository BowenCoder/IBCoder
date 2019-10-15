//
//  IBGroup2Controller1.m
//  IBCoder1
//
//  Created by Bowen on 2019/5/3.
//  Copyright © 2019 BowenCoder. All rights reserved.
//

#import "IBGroup2Controller1.h"

@interface IBGroup2Controller1 ()

@end

@implementation IBGroup2Controller1

/*
 一、单例
 1、单例应该只用来保存全局的状态，并且不能和任何作用域绑定。如果这些状态的作用域比一个完整的应用程序的生命周期要短，
    那么这个状态就不应该使用单例来管理。
 2、开销大的对象
 
 二、进制转换
 
 1、二进制转十进制
    把二进制数按权展开、相加即得十进制数。
    二进制：100
    4 = 1*2^2 + 0*2^1 + 0*2^0
 
 2、十进制转二进制
    十进制数除2取余法，即十进制数除2，余数为权位上的数，得到的商值继续除2，依此步骤继续向下运算直到商为0为止。
    然后从最后一个余数读到第一个余数
    4/2, 商值为2，余数为0
    2/2, 商值为1，余数为0
    1/2, 商值为0，余数为1
 
 3、十六进制转二进制
    十六进制数通过除2取余法，得到二进制数，对每个十六进制为4个二进制，不足时在最左边补零
    16进制：1C
    1/2, 商为0，余数为1。 二进制：0001
 
    C/2, 商为6，余数为0，
    6/2, 商为3，余数为0，
    3/2，商为1，余数为1，
    1/2，商为0，余数为1，二进制位1100
    总：00011100，简：11100
 
 4、二进制转十六进制
    十六进制是取四合一，注意事项，4位二进制转成十六进制是从右到左开始转换，不足时补0
    00011100拆分为0001，1100
    0001为1*2^0=1
    1100为1*2^3+1*2^2+0*2^1+0*2^0 = C
 
 二、码（真值，原码，反码，补码）
    正数的反码和补码都与原码相同
    负数的补码为对该数的原码除符号位外各位取反，然后在最后一位加1
 
    二进制补码的本质，本质是用来表示负整数的
    计算机只要部署加法电路和补码电路，就可以完成所有整数的加法。
    补码借鉴的模概念
    在计算机运算的时候，都是以补码的方式来运算的
 
 三、逻辑运算法则
    与：有0出0；全1出1
    或：有1出1；全0出0
    非：取反
    异或：相同得0；相异得1
 
 四、有符号整型的数据范围为什么负数比正数多一个
    因为-0的存在，不能以正常的逻辑考虑这个问题。
    从计算机角度考虑，计算机以0和1表示正数和负数
    所以计算机表示0：
    +0：0 000 0000
    -0：1 000 0000
    计算机需要表示出来0个概念，但是因为有符号。所以出现+0，-0（不能已正常逻辑思维认为+0，-0都是0，用一个表示就可以了）
    -0的反码加1会溢出，被自动舍去也就是减去100000000
 
 五、移位运算符
    语法格式：需要移位的数字 移位符（<<、>>） 移位的次数
    1、左移运算符（<<）规则
    12 = 3 << 2;
    把3转成二进制数据0000 0011，然后把该数字高位(左侧)的两个零移出，其他的数字都朝左平移2位，最后在低位(右侧)的两个空位补零，
    得到结果0000 1100，十进制为12。
    总结，左移n位就相当于乘以2的n次方
 
    2、右移运算符（>>）规则
    按二进制形式把所有的数字向右移动对应位移位数，低位移出(舍弃)，高位的空位补符号位，即正数补零，负数补1
    总结，右移一位相当于除2，右移n位相当于除以2的n次方
 
 六、大端模式和小端模式
    字节序，顾名思义字节的顺序，再多说两句就是大于一个字节类型的数据在内存中的存放顺序。有两种大端和小端
    大端模式：高位字节排放在内存的低地址端，低位字节排放在内存的高地址端
    小端模式：低位字节排放在内存的低地址端，高位字节排放在内存的高地址端
 
    大端小端没有谁优谁劣，各自优势便是对方劣势：
    小端模式 ：强制转换数据不需要调整字节内容，1、2、4字节的存储方式一样。
    大端模式 ：符号位的判定固定为第一个字节，容易判断正负。
    采用大端方式进行数据存放符合人类的正常思维，而采用小端方式进行数据存放利于计算机处理。
 
 */

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setupUI];
}

- (void)setupUI
{
    self.view.backgroundColor = [UIColor whiteColor];
}

@end
