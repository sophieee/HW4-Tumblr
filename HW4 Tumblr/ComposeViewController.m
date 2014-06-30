//
//  ComposeViewController.m
//  HW4 Tumblr
//
//  Created by Sophie Tang on 6/26/14.
//  Copyright (c) 2014 Sophie Tang. All rights reserved.
//

#import "ComposeViewController.h"

@interface ComposeViewController ()
- (IBAction)onTapNevermind:(id)sender;

@end

@implementation ComposeViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onTapNevermind:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
