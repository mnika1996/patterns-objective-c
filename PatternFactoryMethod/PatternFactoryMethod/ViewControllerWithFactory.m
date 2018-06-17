//
//  ViewControllerWithFactory.m
//  PatternFactoryMethod
//
//  Created by Veronika Makarovskaya on 17.06.2018.
//  Copyright © 2018 Вероника. All rights reserved.
//


#import "ViewControllerWithFactory.h"
#import "Factory.h"


@interface ViewControllerWithFactory () <UISearchBarDelegate>

@property(nonatomic, strong) UISearchBar *searchBar;
@property(nonatomic, strong) Factory *factory;

@end

@implementation ViewControllerWithFactory

- (nullable instancetype)init
{
    self = [super init];
    if (self)
    {
        _factory = [Factory new];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = @"Привет! Я - Фабрика.";
    UILabel *label = [UILabel new];
    label.text = @"Я создаю UIViewControllers. Какой вью контроллер я должна создать?";
    label.numberOfLines = 0;
    label.frame = CGRectMake(5, CGRectGetHeight(self.view.frame) / 2 - 65, CGRectGetWidth(self.view.frame) - 10, 60);
    [self.view addSubview:label];
    self.searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(5, CGRectGetHeight(self.view.frame) / 2, CGRectGetWidth(self.view.frame) - 10, 50)];
    self.searchBar.delegate = self;
    [self.view addSubview:self.searchBar];
}


#pragma mark - UISearchBarDelegate

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    UIViewController *vc = [self.factory createViewControllerWithSearchWord:searchBar.text];
    [self.navigationController pushViewController:vc animated:NO];
}

@end
