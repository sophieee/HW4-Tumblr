//
//  AccountViewController.m
//  HW4 Tumblr
//
//  Created by Sophie Tang on 6/26/14.
//  Copyright (c) 2014 Sophie Tang. All rights reserved.
//

#import "AccountViewController.h"
#import "LogInViewController.h"

@interface AccountViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *AccountScrollView;
- (IBAction)onLogIN:(id)sender;

@end

@implementation AccountViewController

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

- (void)viewDidLayoutSubviews
{
    self.AccountScrollView.contentSize = CGSizeMake(320, 800);
}


- (IBAction)onLogIN:(id)sender {
    LogInViewController *vc = [[LogInViewController alloc] init];
    vc.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentViewController:vc animated:YES completion:nil];
}
@end
