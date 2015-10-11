//
//  CardAdapter.m
//  AdapterPatternSample
//
//  Created by lance on 15/10/11.
//  Copyright © 2015年 lance. All rights reserved.
//

#import "BaseCardAdapter.h"

@implementation BaseCardAdapter

-(instancetype)initWithData:(id)data {
    self = [super init];
    
    if (self) {
        self.data = data;
    }
    
    return self;
}

- (NSString *)name {
    return nil;
}

- (NSString *)phoneNumber {
    return nil;
}

@end
