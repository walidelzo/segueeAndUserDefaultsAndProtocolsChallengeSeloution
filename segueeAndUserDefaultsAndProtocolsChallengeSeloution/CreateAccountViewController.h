//
//  CreateAccountViewController.h
//  segueeAndUserDefaultsAndProtocolsChallengeSeloution
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import <UIKit/UIKit.h>
#define  USER_NAME @"user name"
#define  USER_PASSWORD @" user password"

@protocol CreateAccountViewControllerDelegate<NSObject>
-(void)DidCreateAccount;
-(void)DidCancel;
@end

@interface CreateAccountViewController : UIViewController
@property(weak,nonatomic) id<CreateAccountViewControllerDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *userNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passWordTextField;
@property (weak, nonatomic) IBOutlet UITextField *confirmPassWordTextField;
- (IBAction)creatAccountButton:(UIButton *)sender;
- (IBAction)cancelButton:(UIButton *)sender;
-(void)makeAlert :(NSString *)message;
@end
