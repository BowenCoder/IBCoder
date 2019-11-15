//
//  IBController38.m
//  IBCoder1
//
//  Created by Bowen on 2018/7/27.
//  Copyright © 2018年 BowenCoder. All rights reserved.
//

#import "IBController38.h"

@interface IBController38 ()

@end

@implementation IBController38

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 一、MVC:
 视图（View）：用户界面.
 控制器（controller）：业务逻辑
 模型（Model）： 数据保存
 
 1、理想化的MVC
 相互联系：
 Controller持有Model和View，
 Model和View相互独立，都不持有Controller。
 通信方式：
 Model改变通过Notification和KVO的方式传递给Controller，Controller跟新View。
 View接受响应事件则通过delegate，target-action，block等方式告诉Controller，Controller跟新Model。
 优缺点：
 优点：View和Model可以重复利用，可以独立使用
 缺点：Controller的代码过于臃肿
 
 2、变种的MVC
 相互联系：
 View持有了Model，View依据Model来展示数据，VC组装Model，组装展示是在View中实现。
 优缺点：
 优点：对Controller进行瘦身，将View的内部细节封装起来了，外界不知道View内部的具体实现
 缺点：View依赖于Model
 解决办法：
 通过让View分类持有Model，组装数据

 二、MVP
 V层：UIView和UIViewController以及子类
 P层：中介(关联M和V)，负责渲染视图
 M层：数据层(数据:数据库,网络,文件等等)
 
 相互关系：
 V层和P层之间是相互持有的关系，P层单向持有M层
 
 优缺点：
 优点：模型与视图完全分离；presenter可以被多个视图复用
 缺点：V层和P层关联，V层更新P层也需要更新
 
 三、MVVM（比MVP多了双向绑定）
 相互关系：
 1、核心：如果我们违背了下述述规则,那么我们将会无法正常使用MVVM
 1）view 可以引用viewModel,但反过来却是不行，因为产生了耦合，不方便复用和测试
 2）viewModel 可以引用model,但是反过来也不行
 2、view controller拥有view model
 3、viewModel之间可以有依赖。
 通讯方式：
 1、viewController 尽量不涉及业务逻辑，让 viewModel 去做这些事情。
 2、viewController 只是一个中间人，接收 view 的事件、调用 viewModel 的方法、响应 viewModel 的变化。
 3、model的update，驱动viewmodel的update，然后再驱动view和view controller变化，这个中间的加工逻辑也可以写在view model中。
 4、view接受事件响应，通知viewController，再通知viewModel进行数据处理。
 优缺点：
 优点：低耦合，可重用性，可测试
 缺点：

   ViewModel是MVVM模式的核心，它是连接view和model的桥梁。它有两个方向：一是将【模型】转化成【视图】，
 即将后端传递的数据转化成所看到的页面。实现的方式是：数据绑定。二是将【视图】转化成【模型】，即将所看
 到的页面转化成后端的数据。实现的方式是：DOM 事件监听。这两个方向都实现的，我们称之为数据的双向绑定。
 总结：在MVVM的框架下视图和模型是不能直接通信的。它们通过ViewModel来通信，ViewModel通常要实现一个
 observer观察者，当数据发生变化，ViewModel能够监听到数据的这种变化，然后通知到对应的视图做自动更新，
 而当用户操作视图，ViewModel也能监听到视图的变化，然后通知数据做改动，这实际上就实现了数据的双向绑定。
 并且MVVM中的View 和 ViewModel可以互相通信

*/



@end
