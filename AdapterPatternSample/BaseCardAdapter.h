//
//  CardAdapter.h
//  AdapterPatternSample
//
//  Created by lance on 15/10/11.
//  Copyright © 2015年 lance. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CardAdapterProtocol.h"

@interface BaseCardAdapter : NSObject <CardAdapterProtocol>

/**
 *  传入数据
 */
@property (nonatomic, strong) id data;

/**
 *  使用数据初始化自身
 *
 *  @param data 数据
 *
 *  @return
 */
- (instancetype)initWithData:(id)data;

@end
