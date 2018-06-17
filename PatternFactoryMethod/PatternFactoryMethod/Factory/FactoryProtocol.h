//
//  FactoryProtocol.h
//  PatternFactoryMethod
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//


@protocol FactoryProtocol

@property (nonatomic, nonnull, strong) UIViewController *product;

- (void)getViewControllerWithSearchWord:(NSString *)searchWord;
- (UIViewController *)createViewControllerWithSearchWord:(NSString *)searchWord;

@end
