//
//  ViewController.m
//  Adventure
//
//  Created by Jaime Hernandez on 3/11/14.
//  Copyright (c) 2014 Jaime Hernandez. All rights reserved.
//

#import "ViewController.h"
#import "ChoiceViewControllerEat.h"
#import "ChoiceViewControllerClear.h"
#import "SuckerViewController.h"
#import "SaturdayNightViewController.h"



@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView   *ryansStory;
@property (strong, nonatomic) IBOutlet UIButton *clearUpBoxesButton;
@property (strong, nonatomic) IBOutlet UIButton *eatBoxesButton;

@property (strong, nonatomic) IBOutlet UILabel *endingLabel;
@property (strong, nonatomic) IBOutlet UILabel *saturdayEndingLabel;
@property (strong, nonatomic) IBOutlet UILabel *messageLabel;

@end

@implementation ViewController




-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UIButton*)sender

{
    id title = [sender currentTitle];
    [segue.destinationViewController setTitle:title];
}
-(IBAction)unwindFromDestinationViewController:(UIStoryboardSegue*)segue
{

    
//   if ([segue.identifier isEqualToString:@"showScene1"])
//        {
//        ViewController *destination  = [segue destinationViewController];
//        SuckerViewController *source = [segue sourceViewController];
//        
//        destination.messageLabel.text = source.textFieldMessage.text;
//    }
    
    if ([segue.identifier isEqualToString:@"suckerSegue"]){
    
    
        SuckerViewController * vc = segue.sourceViewController;
        self.endingLabel.text = vc.endingTextView.text;
    }
    else
    {
        SaturdayNightViewController * vc = segue.sourceViewController;
        self.endingLabel.text = vc.saturdayEndingTextView.text;
    }
}
    
- (void)viewDidLoad
{
    
    [super viewDidLoad];
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
