//
//  CardView.h
//  AdapterPatternSample
//
//  Created by lance on 15/10/11.
//  Copyright © 2015年 lance. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CardAdapterProtocol.h"

#define CARD_FRAME CGRectMake(0, 0, 160, 100)

@interface CardView : UIView

@property (nonatomic, strong) NSString *name;

@property (nonatomic, strong) NSString *phoneNumber;


/**
 *  加载数据
 *
 *  @param data 实现了协议的数据
 */
- (void)setAdapter:(id<CardAdapterProtocol>) data;

@end
