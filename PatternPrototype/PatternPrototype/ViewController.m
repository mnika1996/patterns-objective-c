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
#import "PrototypeViewWithTexts.h"
#import "PrototypeViewWithButton.h"
#import "PrototypeViewWithButtons.h"
#import "PrototypeViewWithImage.h"
#import "PrototypeViewEmpty.h"


@interface ViewController ()

@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    id<PrototypeViewProtocol> view = [self getPrototypeView];
    [self.view addSubview:(UIView *)view];
}

- (id<PrototypeViewProtocol>)getPrototypeView
{
    int randomNumber = (int)((rand() / RAND_MAX) * 5 + 1);
    switch (randomNumber)
    {
        case 1:
            return [PrototypeViewWithText clone];
        case 2:
            return [PrototypeViewWithTexts clone];
        case 3:
            return [PrototypeViewWithButton clone];
        case 4:
            return [PrototypeViewWithButtons clone];
        case 5:
            return [PrototypeViewWithImage clone];
        default:
            return [PrototypeViewEmpty clone];
    }
}

@end
