//
//  ProductViewControllerProducts.m
//  PatternFactoryMethod
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//

#import "ProductViewControllerProducts.h"

@interface ProductViewControllerProducts ()

@end

@implementation ProductViewControllerProducts

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [UILabel new];
    label.text = @"Привет! Я - главный UIViewController";
    label.numberOfLines = 0;
    label.frame = CGRectMake(20, 100, CGRectGetWidth(self.view.frame) - 40, 60);
    [self.view addSubview:label];
}

@end
