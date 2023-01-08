//
//  SecondViewController.m
//  ViewController生命周期
//
//  Created by 翟旭博 on 2022/9/16.
//

#import "SecondViewController.h"
#import "FirstViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)loadView {
    [super loadView];
    NSLog(@"loadView2");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"viewDidLoad2");
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:button];
    button.tintColor = [UIColor blackColor];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"back" forState:UIControlStateNormal];
    

}

- (void)press {
    NSLog(@"second back------------------------");
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"viewWillLayoutSubviews2");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"viewDidLayoutSubviews2");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear2");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear2");
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear2");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear2");
}

- (void)dealloc {
    NSLog(@"dealloc2");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
