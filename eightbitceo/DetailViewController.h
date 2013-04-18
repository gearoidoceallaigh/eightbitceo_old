//
//  DetailViewController.h
//  eightbitceo
//
//  Created by Ger Kelly on 18/04/2013.
//  Copyright (c) 2013 Getchoo Creations. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end
