//
//  inställningarViewController.m
//  AugustPosnerLabb1
//
//  Created by August Posner on 2018-01-17.
//  Copyright © 2018 August Posner. All rights reserved.
//

#import "inställningarViewController.h"

@interface insta_llningarViewController ()
@property (nonatomic) NSUserDefaults *settings;
@property (weak, nonatomic) IBOutlet UISegmentedControl *colorPicker;

@end

@implementation insta_llningarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.settings = [NSUserDefaults standardUserDefaults];
    [self loadColor];
    [self setColorPicker];
}
- (IBAction)valueChanged:(id)sender {
    [self saveColor];
    [self loadColor];
}

- (void) saveColor {
    NSInteger choice = self.colorPicker.selectedSegmentIndex;
    [self.settings setInteger:choice forKey:@"Color"];
}

- (void) loadColor {
    if ([self.settings integerForKey:@"Color"]==0)
        self.view.backgroundColor = [UIColor darkGrayColor];
    else
        self.view.backgroundColor = [UIColor whiteColor];
}

- (void) setColorPicker {
    if ([self.settings integerForKey:@"Color"]==0)
        self.colorPicker.selectedSegmentIndex = 0;
    else
        self.colorPicker.selectedSegmentIndex = 1;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
