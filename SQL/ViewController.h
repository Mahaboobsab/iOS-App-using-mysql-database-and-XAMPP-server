//
//  ViewController.h
//  SQL
//
//  Created by Meheboob Nadaf on 24/08/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>

#define kPostURL @"http://localhost/tutorialTest.php"
#define kName @"name"
#define kMessage @"message"
#define kId @"id"

@interface ViewController : UIViewController{

    NSURLConnection *postConnection;
}
- (IBAction)database:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *nameText;

@property (weak, nonatomic) IBOutlet UITextView *messageText;
@property (weak, nonatomic) IBOutlet UITextField *idText;
- (IBAction)post:(id)sender;
-(void) postMessage:(NSString*) message withName:(NSString *) name withId:(NSString *) userid;
@end

