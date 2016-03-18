//
//  Search.h
//  PlacesPrediction
//
//  Created by Galileo Guzman on 18/03/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GoogleMaps;
@interface Search : UIViewController <GMSAutocompleteViewControllerDelegate, UISearchControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *txtSearch;
@end
