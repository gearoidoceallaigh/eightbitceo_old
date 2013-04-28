//
//  IncorporationViewController.m
//  eightbitceo
//
//  Created by Ger Kelly on 18/04/2013.
//  Copyright (c) 2013 Getchoo Creations. All rights reserved.
//

#import "IncorporationViewController.h"
#import "CompanyDetailsViewController.h"

@interface IncorporationViewController ()

@end

@implementation IncorporationViewController
@synthesize companyName;
@synthesize founderFirstName;
@synthesize FounderLastName;

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
    [self setFounderFirstName:nil];
    [self setFounderLastName:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{ 
    [textField resignFirstResponder];
    return NO;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    CompanyDetailsViewController *controller = (CompanyDetailsViewController *)segue.destinationViewController;
    controller.companyName = self.companyName.text;
    controller.founderFirstName = self.founderFirstName.text;
    controller.founderLastName = self.FounderLastName.text;
}

@end
