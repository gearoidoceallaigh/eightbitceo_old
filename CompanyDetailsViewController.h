//
//  CompanyDetailsViewController.h
//  eightbitceo
//
//  Created by Ger Kelly on 20/04/2013.
//  Copyright (c) 2013 Getchoo Creations. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CompanyDetailsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *founderNameLabel;
@property (weak, nonatomic) IBOutlet UITextView *businessDescriptionView;

@property(weak, nonatomic) NSString *companyName;
@property(weak, nonatomic) NSString *founderFirstName;
@property(weak, nonatomic) NSString *founderLastName;
@property(weak, nonatomic) NSArray *nicheMarkets;
@property(weak, nonatomic) NSArray *services;
@property(weak, nonatomic) NSArray *products;

- (IBAction)generateBusiness:(id)sender;
@end
