//
//  IncorporationViewController.m
//  eightbitceo
//
//  Created by Ger Kelly on 18/04/2013.
//  Copyright (c) 2013 Getchoo Creations. All rights reserved.
//

#import "IncorporationViewController.h"

@interface IncorporationViewController ()

@end

@implementation IncorporationViewController
@synthesize companyName;

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
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setCompanyName:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)companyNameChanged:(id)sender {
    
    NSLog(@"oh hello there: %@", self.companyName.text);
}
@end
