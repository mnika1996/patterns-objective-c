//
//  PrototypeViewWithButton.m
//  PatternPrototype
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//


#import "PrototypeViewWithButton.h"


@interface PrototypeViewWithButton()

@property (nonatomic, strong) UIButton *button;

@end


@implementation PrototypeViewWithButton

- (instancetype)initWithText:(NSString *)string
{
    self = [super init];
    if (self)
    {
        _button = [UIButton new];
        _button.backgroundColor = [UIColor redColor];
        [_button setTitle:string forState:UIControlStateNormal];
        [_button setTintColor:[UIColor whiteColor]];
        _button.layer.cornerRadius = 5.0f;
        _button.layer.masksToBounds = YES;
        _button.frame = CGRectMake(20, 50, 150, 60);
        [self addSubview:_button];
    }
    return self;
}



+ (id<PrototypeViewProtocol>)clone
{
    return [[PrototypeViewWithButton alloc] initWithText:@"text"];
}

@end
