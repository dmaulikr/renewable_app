//
//  /Classes/NLApportaAppDelegate.hpp
//
//
//  Created by Cabriales, Castillo y Gomez on 4/20/13.
//
//

#import <UIKit/UIKit.h>



@interface NLApportaAppDelegate : NSObject <UIApplicationDelegate, UINavigationControllerDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;

    
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;



@end
