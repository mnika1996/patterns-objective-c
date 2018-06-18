//
//  PrototypeViewWithImage.m
//  PatternPrototype
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//


#import "PrototypeViewWithImage.h"


@interface PrototypeViewWithImage()

@property (nonatomic, strong) UIImageView *image;

@end


@implementation PrototypeViewWithImage

- (instancetype)initWithText:(NSString *)string
{
    self = [super init];
    if (self)
    {
        _image = [UIImageView new];
        [_image setImage:[UIImage imageNamed:string]];
        [self addSubview:_image];
    }
    return self;
}

+ (id<PrototypeViewProtocol>)clone
{
    return [[PrototypeViewWithImage alloc] initWithText:@"image"];
}

@end
