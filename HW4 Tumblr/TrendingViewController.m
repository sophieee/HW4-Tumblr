//
//  TrendingViewController.m
//  HW4 Tumblr
//
//  Created by Sophie Tang on 6/26/14.
//  Copyright (c) 2014 Sophie Tang. All rights reserved.
//

#import "TrendingViewController.h"

@interface TrendingViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *TrendingScrollView;
@property (weak, nonatomic) IBOutlet UIImageView *loadingImage1;
@property (weak, nonatomic) IBOutlet UIImageView *loadingImage2;
@property (weak, nonatomic) IBOutlet UIImageView *loadingImage3;

@end

@implementation TrendingViewController

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
    
    self.TrendingScrollView.hidden = YES;
    self.loadingImage1.alpha = 1;
    self.loadingImage2.alpha = 0;
    self.loadingImage3.alpha = 0;
    
    loadingtimer = [NSTimer scheduledTimerWithTimeInterval:0.9 target:self selector:@selector(loadingAnimation) userInfo:nil repeats:YES];
    
    [self performSelector:@selector(showfeed) withObject:nil afterDelay:3];
    
}

- (void)loadingAnimation{
    [UIView animateWithDuration:0.3 delay:0 options:0 animations:^{
        self.loadingImage1.alpha = 0;
        self.loadingImage2.alpha = 1;
        self.loadingImage3.alpha = 0;
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3 delay:0 options:0 animations:^{
            self.loadingImage1.alpha = 0;
            self.loadingImage2.alpha = 0;
            self.loadingImage3.alpha = 1;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:0.3 delay:0 options:0 animations:^{
                self.loadingImage1.alpha = 1;
                self.loadingImage2.alpha = 0;
                self.loadingImage3.alpha = 0;
            } completion:nil];
        }];
    }];
}

- (void)viewDidLayoutSubviews
{
    self.TrendingScrollView.contentSize = CGSizeMake(320, 1220);
}

-(void)showfeed{
    [loadingtimer invalidate];
    self.TrendingScrollView.hidden = NO;
    self.loadingImage1.alpha = 0;
    self.loadingImage2.alpha = 0;
    self.loadingImage3.alpha = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
