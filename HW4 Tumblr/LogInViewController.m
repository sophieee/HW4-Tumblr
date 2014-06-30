//
//  LogInViewController.m
//  HW4 Tumblr
//
//  Created by Sophie Tang on 6/29/14.
//  Copyright (c) 2014 Sophie Tang. All rights reserved.
//

#import "LogInViewController.h"

@interface LogInViewController ()
- (IBAction)onTap:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *EmailTextField;

@end

@implementation LogInViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.EmailTextField becomeFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTap:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
