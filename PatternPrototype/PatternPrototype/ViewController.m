//
//  ViewController.m
//  PatternPrototype
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//


#import "ViewController.h"
#import "PrototypeViewProtocol.h"
#import "PrototypeViewWithText.h"


@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    PrototypeViewWithText *view = [PrototypeViewWithText new];
    id<PrototypeViewProtocol> cloneView = [view clone];
    [self.view addSubview:(UIView *)cloneView];
}


@end
