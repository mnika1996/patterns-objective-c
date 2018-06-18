//
//  PrototypeViewWithTexts.m
//  PatternPrototype
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//


#import "PrototypeViewWithTexts.h"


@interface PrototypeViewWithTexts()

@property (nonatomic, strong) UILabel *label1;
@property (nonatomic, strong) UILabel *label2;

@end


@implementation PrototypeViewWithTexts

- (instancetype)initWithText:(NSString *)string
{
    self = [super init];
    if (self)
    {
        _label1 = [[UILabel alloc]initWithFrame:CGRectMake(20, 50, 150, 60)];
        _label1.numberOfLines = 0;
        _label1.text = string;
        [self addSubview:_label1];
        
        _label2 = [[UILabel alloc]initWithFrame:CGRectMake(20, 115, 150, 60)];
        _label2.numberOfLines = 0;
        _label2.text = string;
        [self addSubview:_label2];
    }
    return self;
}



+ (id<PrototypeViewProtocol>)clone
{
    return [[PrototypeViewWithTexts alloc] initWithText:@"text"];
}

@end
