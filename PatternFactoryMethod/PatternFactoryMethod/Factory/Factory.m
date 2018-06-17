//
//  ViewController.m
//  PatternFactoryMethod
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//


#import "Factory.h"

#import "ProductViewControllerWithButton.h"
#import "ProductViewControllerEmpty.h"
#import "ProductViewControllerProducts.h"
#import "ProductViewControllerPayments.h"
#import "ProductViewControllerUndefined.h"


typedef NS_ENUM(NSInteger, ProductViewControllerName)
{
    ProductsVC = 0,
    PaymentsVC = 1,
    EmptyVC = 2,
    WithButtonVC = 3,
    UndefinedVC = 4
};



@interface Factory ()

@end


@implementation Factory

- (BOOL)isString:(NSString *)string contains:(NSString *)substring
{
    NSRange range = [string rangeOfString:substring];
    return range.length > 0 ? YES : NO;
}

- (NSInteger)productViewControllerNameWithSearchWord:(NSString *)searchWord
{
    if ([self isString:searchWord contains:@"Главный"])
        return ProductsVC;
    else if ([self isString:searchWord contains:@"Платежи"])
        return PaymentsVC;
    else if ([self isString:searchWord contains:@"Пустой"])
        return EmptyVC;
    else if ([self isString:searchWord contains:@"кнопкой"])
        return WithButtonVC;
    else
        return UndefinedVC;
}


#pragma mark - FactoryProtocol

- (UIViewController *)createViewControllerWithSearchWord:(NSString *)searchWord
{
    [self getViewControllerWithSearchWord:searchWord];
    return self.product;
}

- (void)getViewControllerWithSearchWord:(NSString *)searchWord
{
    switch ([self productViewControllerNameWithSearchWord:searchWord])
    {
        case ProductsVC:
            self.product = [ProductViewControllerProducts new];
            break;
        case PaymentsVC:
            self.product = [ProductViewControllerPayments new];
            break;
        case EmptyVC:
            self.product = [ProductViewControllerEmpty new];
            break;
        case WithButtonVC:
            self.product = [ProductViewControllerWithButton new];
            break;
        default:
            self.product = [ProductViewControllerUndefined new];
            break;
    }
}


@synthesize product;

@end
