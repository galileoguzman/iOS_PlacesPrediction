//
//  Fetcher.h
//  PlacesPrediction
//
//  Created by Galileo Guzman on 18/03/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>


@interface Fetcher : UIViewController <UITextFieldDelegate, GMSAutocompleteFetcherDelegate>

@property (strong, nonatomic) IBOutlet UITextField *txtSearch;
@property (strong, nonatomic) IBOutlet UITextView *txtResults;

@end
