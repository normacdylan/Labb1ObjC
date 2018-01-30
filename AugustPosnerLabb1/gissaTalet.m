//
//  gissaTalet.m
//  AugustPosnerLabb1
//
//  Created by August Posner on 2018-01-17.
//  Copyright © 2018 August Posner. All rights reserved.
//

#import "gissaTalet.h"

@interface gissaTalet ()
@property (weak, nonatomic) IBOutlet UILabel *infoText;
@property (weak, nonatomic) IBOutlet UILabel *sliderValueText;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@end

@implementation gissaTalet

int hiddenNumber;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateValueText];
    [self updateHiddenNumber];
    self.infoText.text = @"Vilket är det hemliga talet?";
    [self loadColor];
}

- (IBAction)sliderChanged:(id)sender {
    int guess = (int) self.slider.value;
    if (guess < hiddenNumber)
        self.infoText.text = @"För lågt! Gissa igen.";
    else if (guess > hiddenNumber)
        self.infoText.text = @"För högt! Gissa igen.";
    else {
        self.infoText.text = @"Rätt! Vilket är det nya hemliga talet?";
        [self updateHiddenNumber];
    }
    [self updateValueText];
}


- (void) updateHiddenNumber {
    hiddenNumber = arc4random_uniform(101);
}

- (void) updateValueText {
    int rounded = (int) self.slider.value;
    NSString *value = [NSString stringWithFormat:@"%d",rounded];
    self.sliderValueText.text = value;
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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
