// File: Classes/RootViewController/MenuViewController/MenuViewController.mm
//
//  Created by Cabriales, Castillo y Gomez on 4/20/13.
//
//

#import "MenuViewController.hpp"
#import "Boton1ViewController.hpp"
#import "Boton2ViewController.hpp"
#import "Boton3ViewController.hpp"
#import "Boton4ViewController.hpp"
#import "Boton5ViewController.hpp"
#import "Boton6ViewController.hpp"
#import "ExplicaRealidad.hpp"
//#import "LayarPlayer.hpp"


@implementation MenuViewController


-(IBAction)Boton1:(id)sender{
    
  Boton1ViewController *varBoton1ViewController = [[Boton1ViewController alloc] initWithNibName:@"Boton1ViewController" bundle:nil];
  [[self navigationController] pushViewController:varBoton1ViewController animated:YES];
  //[varBoton1ViewController release];
    
}

-(IBAction)Boton2:(id)sender{
    
      Boton2ViewController *varBoton2ViewController = [[Boton2ViewController alloc] initWithNibName:@"Boton2ViewController" bundle:nil];
  [[self navigationController] pushViewController:varBoton2ViewController animated:YES];
  //[varBoton2ViewController release];
    
  
    
}

-(IBAction)Boton3:(id)sender{
    
    Boton3ViewController *varBoton3ViewController = [[Boton3ViewController alloc] initWithNibName:@"Boton3ViewController" bundle:nil];
  [[self navigationController] pushViewController:varBoton3ViewController animated:YES];
  //[varBoton3ViewController release];

    
}

-(IBAction)Boton4:(id)sender{
    
  Boton4ViewController *varBoton4ViewController = [[Boton4ViewController alloc] initWithNibName:@"Boton4ViewController" bundle:nil];
  [[self navigationController] pushViewController:varBoton4ViewController animated:YES];
  //[varBoton4ViewController release];
    
}

-(IBAction)Boton5:(id)sender{
    
  Boton5ViewController *varBoton5ViewController = [[Boton5ViewController alloc] initWithNibName:@"Boton5ViewController" bundle:nil];
  [[self navigationController] pushViewController:varBoton5ViewController animated:YES];
  //[varBoton5ViewController release];
    
}


-(IBAction)Boton6:(id)sender{
    
  Boton6ViewController *varBoton6ViewController = [[Boton6ViewController alloc] initWithNibName:@"Boton6ViewController" bundle:nil];
  [[self navigationController] pushViewController:varBoton6ViewController animated:YES];
  //[varBoton6ViewController release];
    
}


-(IBAction)BotonExplicaRealidad:(id)sender{
    
  ExplicaRealidad *varExplicaRealidad = [[ExplicaRealidad alloc] initWithNibName:@"ExplicaRealidad" bundle:nil];
  [[self navigationController] pushViewController:varExplicaRealidad animated:YES];
  //[varExplicaRealidad release];
    
}


//Realidad aumentada///////
/*
- (IBAction)launchPlayer:(id)sender {
    NSString *layerName = @"duvid";
    
    NSString *consumerKey = @"123456";
    
    NSString *consumerSecret = @"123456";
    
    
    
    NSArray *oauthKeys = [NSArray arrayWithObjects:LPConsumerKeyParameterKey, LPConsumerSecretParameterKey, nil];
    
    NSArray *oauthValues = [NSArray arrayWithObjects:consumerKey, consumerSecret, nil];
    
    NSDictionary *oauthParameters = [NSDictionary dictionaryWithObjects:oauthValues forKeys:oauthKeys];
    
    NSArray *layerKeys = [NSArray arrayWithObject:@"radius"]; 
    
    NSArray *layerValues = [NSArray arrayWithObject:@"3000"]; 
    
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

*/
///////Realidad aumentada///////






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

- (void)viewDidLoad
{
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
