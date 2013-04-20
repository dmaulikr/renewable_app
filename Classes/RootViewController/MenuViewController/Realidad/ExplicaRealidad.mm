//  File: Classes/RootViewController/MenuViewController/MenuViewController/Realidad/ExplicaRealidad.mm
//
//  Created by Cabriales, Castillo y Gomez on 4/20/13.
//
//

#import "ExplicaRealidad.hpp"
#import "LayarPlayer.hpp"

@implementation ExplicaRealidad

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


//Realidad aumentada///////

- (IBAction)launchPlayer:(id)sender {
    NSString *layerName = @"energymexico";  //energymexico
    
    NSString *consumerKey = @"123456";
    
    NSString *consumerSecret = @"123456";
    
    
    
    NSArray *oauthKeys = [NSArray arrayWithObjects:LPConsumerKeyParameterKey, LPConsumerSecretParameterKey, nil];
    
    NSArray *oauthValues = [NSArray arrayWithObjects:consumerKey, consumerSecret, nil];
    
    NSDictionary *oauthParameters = [NSDictionary dictionaryWithObjects:oauthValues forKeys:oauthKeys];
    
    NSArray *layerKeys = [NSArray arrayWithObject:@"radius"]; 
    
    NSArray *layerValues = [NSArray arrayWithObject:@"1900000"]; 
    
    NSDictionary *layerFilters = [NSDictionary dictionaryWithObjects:layerValues forKeys:layerKeys];                                                                                                                                                                            
    
    // LPAugmentedRealityViewController *augmentedRealityViewController = [[[ LPAugmentedRealityViewController alloc] init] autorelease];
    
    // NOTE: here we removed "autorelease" because we are using ARC to release resources. If ARC is not enabled in Build settings, you need to use the line above and manage the resource yourself.  
    
    LPAugmentedRealityViewController *augmentedRealityViewController = [[ LPAugmentedRealityViewController alloc] init];
    augmentedRealityViewController.delegate = nil; 
    augmentedRealityViewController.showGrid = YES; 
    
    [self presentModalViewController:augmentedRealityViewController animated:YES]; 
    
    [augmentedRealityViewController loadLayerWithName:layerName 
                                      oauthParameters:oauthParameters 
                                           parameters:layerFilters 
                                              options:LPAllViewsEnabled];
}

///////Realidad aumentada///////



- (void)viewDidLoad
{
    MiScrollView.contentSize = CGSizeMake(320,1000);
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end


