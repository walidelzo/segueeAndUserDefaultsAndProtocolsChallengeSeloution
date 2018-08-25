//
//  LoginViewController.m
//  segueeAndUserDefaultsAndProtocolsChallengeSeloution
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
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

#pragma  mark - create viewController Delegate

-(void)DidCreateAccount{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)DidCancel{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)takeUsername:(NSString *)userName :(NSString *)passWord{
    userName=_userNameTextField.text;
    passWord=_PassWordTextField.text;
}

-(NSString *)GetUSerName:(NSString *)UserName{
    UserName=_userNameTextField.text;
    return UserName;
}
-(NSString *)GetPassWord:(NSString *)passWord{
    passWord=_PassWordTextField.text;
    return passWord;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.destinationViewController isKindOfClass:[CreateAccountViewController class]]){
        CreateAccountViewController *createviewControllerVC=segue.destinationViewController;
        createviewControllerVC.delegate=self;
    }
    

    
    
}


- (IBAction)createAccountBarButtonPressed:(UIBarButtonItem *)sender
{
    [self performSegueWithIdentifier:@"createAccountSegue" sender:sender];
}

- (IBAction)LoginButtonPressed:(UIButton *)sender
{
    NSString *userName=[[NSUserDefaults standardUserDefaults]objectForKey:USER_NAME];
    NSString *userPassword=[[NSUserDefaults standardUserDefaults]objectForKey:USER_PASSWORD];
    [[NSUserDefaults standardUserDefaults]synchronize];
    if ([_userNameTextField.text isEqualToString:userName]&&[_PassWordTextField.text isEqualToString:userPassword]){
        
        [self performSegueWithIdentifier:@"viewControllerSegue" sender:sender];
       
  
    }else{
        UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"alert message" message:@"your userName and password is incorrect!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action=[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
    }
    
    
    
}
@end
