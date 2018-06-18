//
//  PrototypeViewWithButtons.m
//  PatternPrototype
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//

#import "PrototypeViewWithButtons.h"


@interface PrototypeViewWithButtons()

@property (nonatomic, strong) UIButton *button1;
@property (nonatomic, strong) UIButton *button2;

@end


@implementation PrototypeViewWithButtons

- (instancetype)initWithText:(NSString *)string
{
    self = [super init];
    if (self)
    {
        _button1 = [UIButton new];
        _button1.backgroundColor = [UIColor redColor];
        [_button1 setTitle:string forState:UIControlStateNormal];
        [_button1 setTintColor:[UIColor whiteColor]];
        _button1.layer.cornerRadius = 5.0f;
        _button1.layer.masksToBounds = YES;
        _button1.frame = CGRectMake(20, 50, 150, 60);
        [self addSubview:_button1];
        
        _button2 = [UIButton new];
        _button2.backgroundColor = [UIColor redColor];
        [_button2 setTitle:string forState:UIControlStateNormal];
        [_button2 setTintColor:[UIColor whiteColor]];
        _button2.layer.cornerRadius = 5.0f;
        _button2.layer.masksToBounds = YES;
        _button2.frame = CGRectMake(20, 115, 150, 60);
        [self addSubview:_button2];
    }
    return self;
}

+ (id<PrototypeViewProtocol>)clone
{
    return [[PrototypeViewWithButtons alloc] initWithText:@"button"];
}

@end
