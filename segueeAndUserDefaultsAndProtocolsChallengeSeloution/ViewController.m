//
//  ViewController.m
//  segueeAndUserDefaultsAndProtocolsChallengeSeloution
//
//  Created by walidelzo on 8/25/18.
//  Copyright © 2018 walidelzo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    _userLabel.text= [[NSUserDefaults standardUserDefaults]objectForKey:USER_NAME];
    _passWordLabel.text=[[NSUserDefaults standardUserDefaults]objectForKey:USER_PASSWORD];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
