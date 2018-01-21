//
//  ViewController.m
//  AugustPosnerLabb1
//
//  Created by August Posner on 2018-01-16.
//  Copyright © 2018 August Posner. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic) NSUserDefaults *settings;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void) viewWillAppear:(BOOL)animated {
    [self loadColor];
}

- (void) loadColor {
    NSUserDefaults *settings = [NSUserDefaults standardUserDefaults];
    if ([settings integerForKey:@"Color"]==0)
        self.view.backgroundColor = [UIColor darkGrayColor];
    else
        self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
