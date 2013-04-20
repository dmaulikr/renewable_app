// File: Classes/RootViewController/RootViewController.mm
//
//  Created by Cabriales on 4/20/13.
//

#import "RootViewController.hpp"
#import "MenuViewController.hpp"

@implementation RootViewController


-(IBAction)BotonLeon:(id)sender{
    
  MenuViewController *varMenuViewController = [[MenuViewController alloc] initWithNibName:@"MenuViewController" bundle:nil];
  [[self navigationController] pushViewController:varMenuViewController animated:YES];
  //[varMenuViewController release];      
 
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


/*
- (void)dealloc {
    [super dealloc];
}
*/

@end
