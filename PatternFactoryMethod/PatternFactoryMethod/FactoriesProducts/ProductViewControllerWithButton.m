//
//  ProductViewControllerWithButton.m
//  PatternFactoryMethod
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//

#import "ProductViewControllerWithButton.h"

@interface ProductViewControllerWithButton ()

@end

@implementation ProductViewControllerWithButton

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = [UIButton new];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"Нажми!" forState:UIControlStateNormal];
    [button setTintColor:[UIColor whiteColor]];
    button.layer.cornerRadius = 5.0f;
    button.layer.masksToBounds = YES;
    button.frame = CGRectMake(20, 100, CGRectGetWidth(self.view.frame) - 40, 60);
    [self.view addSubview:button];
}

@end
