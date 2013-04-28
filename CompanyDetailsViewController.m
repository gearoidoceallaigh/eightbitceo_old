//
//  CompanyDetailsViewController.m
//  eightbitceo
//
//  Created by Ger Kelly on 20/04/2013.
//  Copyright (c) 2013 Getchoo Creations. All rights reserved.
//

#import "CompanyDetailsViewController.h"
#import "CompanyDataModel.h"
#import "Company.h"

@interface CompanyDetailsViewController () {
    NSFetchedResultsController *_fetchedResultsController;
}
@end

@implementation CompanyDetailsViewController
@synthesize nameLabel;
@synthesize founderNameLabel;
@synthesize businessDescriptionView;
@synthesize companyName;
@synthesize founderFirstName;
@synthesize founderLastName;
@synthesize nicheMarkets;
@synthesize services;
@synthesize products;

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
    NSLog(@"Run it!");
    nicheMarkets = [NSArray arrayWithObjects: @"College Students", @"Tech Geeks", @"Sports Jocks", @"Foodies", @"Old Folks", @"Tweens", @"Upper Class People", @"Lower Class People", @"Middle Class People", @"Upper-middle Class People", @"Lower-middle Class People", @"Beer Enthusiasts", @"Entrepreneurs", @"Unemployed People", @"Venture Capitalists", @"Single People", @"Couples", @"Divorcees", @"Health Freaks", @"Gym Bunnies", @"Power Lifters", @"Professional Athletes", @"Overweight people", @"Footballers", @"Boxers", @"Long Distance Runners", @"Cyclists", @"Musicians", @"Construction Workers", @"Bar Staff", @"Underweight People", @"Teens", @"People in their Twenties", @"People in their Thirties", @"People in their Forties", @"People in their Fifties", nil];
    
    services = [NSArray arrayWithObjects: @"Movie streaming", @"Music streaming", @"File sharing", @"Photo sharing", @"Dating", @"Fashion", @"Car sharing", @"Gambling", @"Incentivised advertising", @"Insurance comparison", @"Sports finder", @"Gig finder", @"Social gaming", @"Mobile gaming", @"Virtual pet", @"Virtual boyfriend", @"Virtual girlfriend", @"To-do list", @"Project Management", @"Diet Management", @"Fitness Coach", @"Microblogging", @"Messaging", @"Online banking", @"Dedicated blog", @"Party Planning", @"Personal Development", nil];
    
    products = [NSArray arrayWithObjects: @"Smartphone", @"Tablets", @"Clothes", @"Footwear", @"Jewelry", @"Stationary", @"Specialised Meals", @"Craft Beer", nil];
    NSArray *service_or_product = [NSArray arrayWithObjects: @"service", @"product", nil];

    NSUInteger randomMarketId = arc4random() % [nicheMarkets count];
    NSString *randomMarket = [nicheMarkets objectAtIndex:randomMarketId];
        
    // hey gaiirrrr: this is good stuff for saving so dont delete!
    
//    NSFetchRequest *request = [[NSFetchRequest alloc] init];
//    NSManagedObjectContext *context = [[CompanyDataModel sharedDataModel] mainContext];
//    NSEntityDescription *entity = [NSEntityDescription entityForName:@"Company"
//                                               inManagedObjectContext:context];
//    
//    [request setEntity:entity];
//    NSError *error = nil;
//    NSMutableArray *mutableFetchResults = [[context executeFetchRequest:request error:&error] mutableCopy];
//    Company *c = [mutableFetchResults objectAtIndex:0];
//    NSLog(@"count is: %d",[mutableFetchResults count]);
//    NSLog(@"name is: %@",[c name]);
//    NSLog(@"Done?");
    NSMutableString *companyNameLabel;
    companyNameLabel = [NSMutableString stringWithString: self.companyName];
    [companyNameLabel appendString: @"!"];
    self.nameLabel.text = companyNameLabel;
    NSMutableString *founderName;
    founderName = [NSMutableString stringWithString: self.founderFirstName];
    [founderName appendString: @" "];
    [founderName appendString: self.founderLastName];
    self.founderNameLabel.text = founderName;
    
    NSMutableString *businessDescription;
    businessDescription = [NSMutableString stringWithString: self.companyName];
    
    if (@"service" == [service_or_product objectAtIndex: arc4random() % [service_or_product count]]) {
        NSLog(@"make it a service!");
//        NSLog(@"random service: %@", [services objectAtIndex:arc4random() % [services count]]);
        [businessDescription appendString: @" will develop a "];
        [businessDescription appendString: [services objectAtIndex:arc4random() % [services count]]];
        [businessDescription appendString: @" app for "];
        [businessDescription appendString: randomMarket];
    } else {
        NSLog(@"make it a product!");
        NSLog(@"random product: %@", [products objectAtIndex:arc4random() % [products count]]);
        [businessDescription appendString: @" aims to provide a "];
        [businessDescription appendString: [products objectAtIndex:arc4random() % [products count]]];
        [businessDescription appendString: @" for "];
        [businessDescription appendString: randomMarket];
    }
    
    self.businessDescriptionView.text = businessDescription;
}

- (void)viewDidUnload
{
    [self setNameLabel:nil];
    [self setFounderNameLabel:nil];
    [self setBusinessDescriptionView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)generateBusiness:(id)sender {
    nicheMarkets = [NSArray arrayWithObjects: @"College Students", @"Tech Geeks", @"Sports Jocks", @"Foodies", @"Old Folks", @"Tweens", @"Upper Class People", @"Lower Class People", @"Middle Class People", @"Upper-middle Class People", @"Lower-middle Class People", @"Beer Enthusiasts", @"Entrepreneurs", @"Unemployed People", @"Venture Capitalists", @"Single People", @"Couples", @"Divorcees", @"Health Freaks", @"Gym Bunnies", @"Power Lifters", @"Professional Athletes", @"Overweight people", @"Footballers", @"Boxers", @"Long Distance Runners", @"Cyclists", @"Musicians", @"Construction Workers", @"Bar Staff", @"Underweight People", @"Teens", @"People in their Twenties", @"People in their Thirties", @"People in their Forties", @"People in their Fifties", nil];
    
    services = [NSArray arrayWithObjects: @"Movie streaming", @"Music streaming", @"File sharing", @"Photo sharing", @"Dating", @"Fashion", @"Car sharing", @"Gambling", @"Incentivised advertising", @"Insurance comparison", @"Sports finder", @"Gig finder", @"Social gaming", @"Mobile gaming", @"Virtual pet", @"Virtual boyfriend", @"Virtual girlfriend", @"To-do list", @"Project Management", @"Diet Management", @"Fitness Coach", @"Microblogging", @"Messaging", @"Online banking", @"Dedicated blog", @"Party Planning", @"Personal Development", nil];
    
    products = [NSArray arrayWithObjects: @"Smartphone", @"Tablets", @"Clothes", @"Footwear", @"Jewelry", @"Stationary", @"Specialised Meals", @"Craft Beer", nil];
    NSArray *service_or_product = [NSArray arrayWithObjects: @"service", @"product", nil];
    
    NSUInteger randomMarketId = arc4random() % [nicheMarkets count];
    NSString *randomMarket = [nicheMarkets objectAtIndex:randomMarketId];
    
    NSMutableString *businessDescription;
    businessDescription = [NSMutableString stringWithString: self.companyName];
    
    if (@"service" == [service_or_product objectAtIndex: arc4random() % [service_or_product count]]) {
        NSLog(@"make it a service!");
        //        NSLog(@"random service: %@", [services objectAtIndex:arc4random() % [services count]]);
        [businessDescription appendString: @" will develop a "];
        [businessDescription appendString: [services objectAtIndex:arc4random() % [services count]]];
        [businessDescription appendString: @" app for "];
        [businessDescription appendString: randomMarket];
    } else {
        NSLog(@"make it a product!");
        NSLog(@"random product: %@", [products objectAtIndex:arc4random() % [products count]]);
        [businessDescription appendString: @" aims to provide a "];
        [businessDescription appendString: [products objectAtIndex:arc4random() % [products count]]];
        [businessDescription appendString: @" for "];
        [businessDescription appendString: randomMarket];
    }
    
    self.businessDescriptionView.text = businessDescription;
}
@end
