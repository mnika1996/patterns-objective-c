//
//  PrototypeViewWithText.m
//  PatternPrototype
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//


#import "PrototypeViewWithText.h"


@interface PrototypeViewWithText()

@property (nonatomic, strong) UILabel *label;

@end


@implementation PrototypeViewWithText

- (instancetype)initWithText:(NSString *)string
{
    self = [super init];
    if (self)
    {
        _label = [[UILabel alloc]initWithFrame:CGRectMake(20, 50, 150, 60)];
        _label.numberOfLines = 0;
        _label.text = string;
        [self addSubview:_label];
    }
    return self;
}



+ (id<PrototypeViewProtocol>)clone
{
    return [[PrototypeViewWithText alloc] initWithText:@"text"];
}

@end
