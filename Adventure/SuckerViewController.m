//
//  SuckerViewController.m
//  Adventure
//
//  Created by Jaime Hernandez on 3/11/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//
#import "ChoiceViewControllerClear.h"
#import "SuckerViewController.h"
#import "ViewController.h"

@interface SuckerViewController ()
@property (strong, nonatomic) IBOutlet UITextField *endSuckerText;

@property (strong, nonatomic) IBOutlet UITextField *textFieldMessage;


@end

@implementation SuckerViewController

- (void) viewDidLoad {
    self.textFieldMessage.text = @"Message Here";
}

@end