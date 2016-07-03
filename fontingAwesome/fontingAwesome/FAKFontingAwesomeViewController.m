//
//  FAKFontingAwesomeViewController.m
//  fontingAwesome
//
//  Created by Flatiron School on 7/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "FAKFontingAwesomeViewController.h"


@interface FAKFontingAwesomeViewController ()
@property (weak, nonatomic) IBOutlet UIButton *fontingAwesomeOulet;
@property (weak, nonatomic) IBOutlet UIButton *secondFontAwesomeOutlet;
@property (weak, nonatomic) IBOutlet UIButton *thirdFontAwesomeOutlet;
@property (weak, nonatomic) IBOutlet UIButton *secondCocoapodOutlet;

@end

@implementation FAKFontingAwesomeViewController

- (IBAction)fontingAwesome:(id)sender {
    self.starIcon = [FAKFontAwesome starIconWithSize:15];
    [self.fontingAwesomeOulet setAttributedTitle:[self.starIcon attributedString] forState:UIControlStateNormal];
    [self.notification dismissNotification];
}
- (IBAction)secondFontAwesome:(id)sender {
    self.bookmarkIcon = [FAKFoundationIcons bookmarkIconWithSize:15];
    [self.secondFontAwesomeOutlet setAttributedTitle:[self.bookmarkIcon attributedString] forState:UIControlStateNormal];
    [self.notification dismissNotification];
}

- (IBAction)thirdFontAwesome:(id)sender {
    self.twitterIcon = [FAKZocial twitterIconWithSize:15];
    [self.thirdFontAwesomeOutlet setAttributedTitle:[self.twitterIcon attributedString] forState:UIControlStateNormal];
    [self.notification dismissNotification];
}

- (IBAction)secondCocoapod:(id)sender {
    [self.notification displayNotificationWithMessage:@"Hello, World!"
                                          forDuration:1.0f];
    [self.notification dismissNotification];
}


//hold down Actions!
- (IBAction)firstButtonDidTouchDown:(id)sender {
    [self.notification displayNotificationWithAttributedString:[self.starIcon attributedString] completion:nil];
    
}
- (IBAction)secondButtonDidTouchDown:(id)sender {
    [self.notification displayNotificationWithAttributedString:[self.bookmarkIcon attributedString] completion:nil];
}
- (IBAction)thirdButtonDidTouchDown:(id)sender {
    [self.notification displayNotificationWithAttributedString:[self.twitterIcon attributedString] completion:nil];
}
- (IBAction)fourthButtonDidTouchDown:(id)sender {
    [self.notification displayNotificationWithMessage:@"Hello, World!"
                                          forDuration:1.0f];
}




- (void)viewDidLoad {
    [super viewDidLoad];
    self.notification = [CWStatusBarNotification new];
    self.notification.notificationStyle = CWNotificationStyleNavigationBarNotification;
    // Do any additional setup after loading the view.
//    self.starIcon = [FAKFontAwesome starIconWithSize:15];
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
