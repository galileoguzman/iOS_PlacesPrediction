//
//  Fetcher.m
//  PlacesPrediction
//
//  Created by Galileo Guzman on 18/03/16.
//  Copyright © 2016 Galileo Guzman. All rights reserved.
//

#import "Fetcher.h"

@interface Fetcher () <GMSAutocompleteFetcherDelegate>

@end

@implementation Fetcher{
    GMSAutocompleteFetcher* _fetcher;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
    
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    // Set bounds to inner-west Sydney Australia.
    CLLocationCoordinate2D neBoundsCorner = CLLocationCoordinate2DMake(-33.843366, 151.134002);
    CLLocationCoordinate2D swBoundsCorner = CLLocationCoordinate2DMake(-33.875725, 151.200349);
    GMSCoordinateBounds *bounds = [[GMSCoordinateBounds alloc] initWithCoordinate:neBoundsCorner
                                                                       coordinate:swBoundsCorner];
    
    // Set up the autocomplete filter.
    GMSAutocompleteFilter *filter = [[GMSAutocompleteFilter alloc] init];
    filter.type = kGMSPlacesAutocompleteTypeFilterEstablishment;
    
    // Create the fetcher.
    _fetcher = [[GMSAutocompleteFetcher alloc] initWithBounds:bounds
                                                       filter:filter];
    _fetcher.delegate = self;
    
    [self.txtSearch addTarget:self
                  action:@selector(textFieldDidChange:)
        forControlEvents:UIControlEventEditingChanged];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)textFieldDidChange:(UITextField *)textField {
    NSLog(@"%@", textField.text);
    [_fetcher sourceTextHasChanged:textField.text];
}

#pragma mark - GMSAutocompleteFetcherDelegate
- (void)didAutocompleteWithPredictions:(NSArray *)predictions {
    NSMutableString *resultsStr = [NSMutableString string];
    for (GMSAutocompletePrediction *prediction in predictions) {
        [resultsStr appendFormat:@"%@\n", [prediction.attributedPrimaryText string]];
    }
    self.txtResults.text = resultsStr;
}

- (void)didFailAutocompleteWithError:(NSError *)error {
    self.txtResults.text = [NSString stringWithFormat:@"%@", error.localizedDescription];
}


@end
