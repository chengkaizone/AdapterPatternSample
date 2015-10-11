//
//  CardView.m
//  AdapterPatternSample
//
//  Created by lance on 15/10/11.
//  Copyright © 2015年 lance. All rights reserved.
//

#import "CardView.h"

@interface CardView()

@property (nonatomic, strong) UILabel *labelName;
@property (nonatomic, strong) UILabel *labelPhoneNumber;

@end

@implementation CardView

-(instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if(self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    self.backgroundColor     = [UIColor whiteColor];
    self.layer.borderWidth   = 0.5f;
    self.layer.shadowOpacity = 0.5f;
    self.layer.shadowOffset  = CGSizeMake(2, 2);
    self.layer.shadowRadius  = 1.f;
    self.layer.shadowColor   = [UIColor grayColor].CGColor;
    
    self.labelName = [[UILabel alloc] initWithFrame:CGRectMake(15, 10, 120, 30)];
    self.labelName.font = [UIFont systemFontOfSize:16.f];
    [self addSubview:self.labelName];
    
    
    self.labelPhoneNumber = [[UILabel alloc] initWithFrame:CGRectMake(30, 50, self.frame.size.width, 40)];
    self.labelPhoneNumber.font          = [UIFont fontWithName:@"AvenirNext-UltraLightItalic" size:16.f];
    self.labelPhoneNumber.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.labelPhoneNumber];
    
    self.labelPhoneNumber.center = self.center;
}

- (void)setAdapter:(id<CardAdapterProtocol>) data {
    self.name = [data name];
    self.phoneNumber = [data phoneNumber];
}


@synthesize name = _name;
@synthesize phoneNumber = _phoneNumber;

-(void)setName:(NSString *)name {
    _name = name;
    _labelName.text = name;
}

-(NSString *)name {
    return _name;
}

-(void)setPhoneNumber:(NSString *)phoneNumber {
    _phoneNumber = phoneNumber;
    _labelPhoneNumber.text = phoneNumber;
}

-(NSString *)phoneNumber {
    return _phoneNumber;
}

@end
