//
//  ProductViewControllerPayments.m
//  PatternFactoryMethod
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//

#import "ProductViewControllerPayments.h"

@interface ProductViewControllerPayments ()

@end

@implementation ProductViewControllerPayments

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [UILabel new];
    label.text = @"Ты хотел что-то оплатить? Я пока не умею это делать(";
    label.numberOfLines = 0;
    label.frame = CGRectMake(20, 100, CGRectGetWidth(self.view.frame) - 40, 60);
    [self.view addSubview:label];
}
@end
