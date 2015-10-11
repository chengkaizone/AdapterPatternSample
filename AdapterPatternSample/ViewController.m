//
//  ViewController.m
//  AdapterPatternSample
//
//  Created by lance on 15/10/11.
//  Copyright © 2015年 lance. All rights reserved.
//

#import "ViewController.h"
#import "Card.h"
#import "BaseCardAdapter.h"
#import "CustomCardAdapter.h"
#import "CardView.h"

/**
 *  适配器模式的简单运用
 *  本例参考自YouXianMing大师而完成,感谢对此做出的贡献,源码只做备份使用
 */
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Card *model = [Card new];
    model.name = @"mark";
    model.phoneNumber = @"13888888888";
    
    BaseCardAdapter *adapter = [[CustomCardAdapter new] initWithData:model];
    
    CardView *view = [[CardView alloc] initWithFrame:CARD_FRAME];
    [view setAdapter:adapter];
    
    [self.view addSubview:view];
    
    view.center = self.view.center;
    
    
}


@end
