//
//  PrototypeViewEmpty.m
//  PatternPrototype
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//


#import "PrototypeViewEmpty.h"


@implementation PrototypeViewEmpty

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

+ (id<PrototypeViewProtocol>)clone
{
    return [[PrototypeViewEmpty alloc] init];
}

@end
