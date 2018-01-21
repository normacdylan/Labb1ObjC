//
//  OmMigViewController.m
//  AugustPosnerLabb1
//
//  Created by August Posner on 2018-01-21.
//  Copyright © 2018 August Posner. All rights reserved.
//

#import "OmMigViewController.h"

@interface OmMigViewController ()

@end

@implementation OmMigViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self loadColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) loadColor {
    NSUserDefaults *settings = [NSUserDefaults standardUserDefaults];
    if ([settings integerForKey:@"Color"]==0)
        self.view.backgroundColor = [UIColor darkGrayColor];
    else
        self.view.backgroundColor = [UIColor whiteColor];
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
