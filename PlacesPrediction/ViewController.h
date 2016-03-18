//
//  ViewController.h
//  PlacesPrediction
//
//  Created by Galileo Guzman on 18/03/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GoogleMaps;


@interface ViewController : UIViewController <GMSAutocompleteViewControllerDelegate>


@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UILabel *lblAddress;

- (IBAction)btnGetCurrentPlacePressed:(id)sender;
@end

