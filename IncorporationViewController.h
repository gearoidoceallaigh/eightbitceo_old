//
//  IncorporationViewController.h
//  eightbitceo
//
//  Created by Ger Kelly on 18/04/2013.
//  Copyright (c) 2013 Getchoo Creations. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IncorporationViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *companyName;

- (IBAction)companyNameChanged:(id)sender;

@end
