//
//  gissaTalet.m
//  AugustPosnerLabb1
//
//  Created by August Posner on 2018-01-17.
//  Copyright © 2018 August Posner. All rights reserved.
//

#import "gissaTalet.h"

@interface gissaTalet ()
@property (weak, nonatomic) IBOutlet UIButton *guessButton;
@property (weak, nonatomic) IBOutlet UILabel *infoText;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@end

@implementation gissaTalet

int hiddenNumber;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self updateButtonText];
    [self updateHiddenNumber];
    self.infoText.text = @"Gissa vilket det hemliga talet är.";
}

- (IBAction)sliderChanged:(id)sender {
    [self updateButtonText];
}
- (IBAction)guessed:(id)sender {
    if (self.slider.value < hiddenNumber)
        self.infoText.text = @"För lågt! Gissa igen.";
    else if (self.slider.value > hiddenNumber)
        self.infoText.text = @"För högt! Gissa igen.";
    else {
        self.infoText.text = @"Rätt! Gissa vilket det nya talet";
        [self updateHiddenNumber];
    }
}

- (void) updateHiddenNumber {
    hiddenNumber = arc4random_uniform(101);
}

- (void) updateButtonText {
    int rounded = (int) self.slider.value;
    NSString *value = [NSString stringWithFormat:@"%d",rounded];
    NSString *message = [value stringByAppendingString:@"?"];
    [self.guessButton setTitle:message forState:UIControlStateNormal];
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
