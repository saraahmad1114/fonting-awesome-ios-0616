//
//  FAKFontingAwesomeViewController.h
//  fontingAwesome
//
//  Created by Flatiron School on 7/3/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FontAwesomeKit.h"
#import "FAKFontAwesome.h"
#import "CWStatusBarNotification.h"

@interface FAKFontingAwesomeViewController : UIViewController

@property (nonatomic, strong) FAKFontAwesome *starIcon;
@property (nonatomic, strong) FAKFoundationIcons *bookmarkIcon;
@property (nonatomic, strong) FAKZocial *twitterIcon;
@property (nonatomic, strong) CWStatusBarNotification *notification; 

@end
