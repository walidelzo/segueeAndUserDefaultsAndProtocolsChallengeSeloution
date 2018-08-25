//
//  LoginViewController.h
//  segueeAndUserDefaultsAndProtocolsChallengeSeloution
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateAccountViewController.h"
#import "ViewController.h"


@interface LoginViewController : UIViewController<CreateAccountViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *PassWordTextField;
- (IBAction)createAccountBarButtonPressed:(UIBarButtonItem *)sender;
- (IBAction)LoginButtonPressed:(UIButton *)sender;

@end
