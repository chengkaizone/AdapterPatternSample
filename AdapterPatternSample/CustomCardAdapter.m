//
//  CustomCardAdapter.m
//  AdapterPatternSample
//
//  Created by lance on 15/10/11.
//  Copyright © 2015年 lance. All rights reserved.
//

#import "CustomCardAdapter.h"
#import "Card.h"

@implementation CustomCardAdapter

- (NSString *)name {
    if (self.data == nil) {
        return nil;
    }
    
    Card *card = self.data;
    return card.name;
}

- (NSString *)phoneNumber {
    if (self.data == nil) {
        return nil;
    }
    
    Card *card = self.data;
    return card.phoneNumber;
}

@end
