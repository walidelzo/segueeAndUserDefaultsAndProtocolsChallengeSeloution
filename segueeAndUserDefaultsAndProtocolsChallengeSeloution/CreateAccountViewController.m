//
//  CreateAccountViewController.m
//  segueeAndUserDefaultsAndProtocolsChallengeSeloution
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import "CreateAccountViewController.h"

@interface CreateAccountViewController ()

@end

@implementation CreateAccountViewController

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
-(void)makeAlert :(NSString *)message{
    
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"alert message" message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction * action=[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)creatAccountButton:(UIButton *)sender
{
    
    if (_userNameTextField.text.length==0  || _passWordTextField.text.length==0){
        [self makeAlert:@"Enter User or Password Field is empty "];
    }
    else if(![_passWordTextField.text isEqualToString:_confirmPassWordTextField.text])
    {
        [self makeAlert:@"password no equal confirm password"];
    }else
    {
        [[NSUserDefaults standardUserDefaults ]setObject:self.userNameTextField.text forKey:USER_NAME];
        [[NSUserDefaults standardUserDefaults] setObject:self.passWordTextField.text forKey:USER_PASSWORD];
        [self.delegate DidCreateAccount];
    }
    
    
    
}

- (IBAction)cancelButton:(UIButton *)sender
{
    [self.delegate DidCancel];
}
@end
