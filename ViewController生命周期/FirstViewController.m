//
//  FirstViewController.m
//  ViewController生命周期
//
//  Created by 翟旭博 on 2022/9/16.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)loadView {
    [super loadView];
    NSLog(@"loadView1");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"viewDidLoad1");
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:button];
    button.tintColor = [UIColor blackColor];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"go" forState:UIControlStateNormal];
    

}

- (void)press {
    NSLog(@"first back------------------------");
    SecondViewController *vc = [[SecondViewController alloc] init];
    vc.modalPresentationStyle = UIModalPresentationFullScreen;
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"viewWillLayoutSubviews1");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"viewDidLayoutSubviews1");
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"viewWillAppear1");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"viewDidAppear1");
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"viewWillDisappear1");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"viewDidDisappear1");
}

- (void)dealloc {
    NSLog(@"dealloc1");
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
