//
//  ViewController.m
//  SQL
//
//  Created by Meheboob Nadaf on 24/08/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)post:(id)sender {
    
    [self postMessage:self.messageText.text withName:self.nameText.text withId:self.idText.text];
    [self.messageText resignFirstResponder];
    self.messageText.text = nil;
    self.nameText.text = nil;
     self.idText.text = nil;
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Test1" object:self];
}



-(void) postMessage:(NSString*) message withName:(NSString *) name withId:(NSString *) userid{

    if (name != nil && message != nil && userid != nil){
        
        NSMutableString *postString = [NSMutableString stringWithString:kPostURL];
        
        [postString appendString:[NSString stringWithFormat:@"?%@=%@", kName, name]];
        
        [postString appendString:[NSString stringWithFormat:@"&%@=%@", kMessage, message]];
        
        [postString appendString:[NSString stringWithFormat:@"&%@=%d", kId, userid.intValue]];
              [postString setString:[postString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]]];

        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:postString]];
        [request setHTTPMethod:@"POST"];
        
        
        
        NSURLSession *session = [NSURLSession sharedSession];
        NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request
                                                    completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
                                          {
                                              
                                          }];
        [dataTask resume];
        
    }


}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (IBAction)database:(id)sender {
    
    [self performSegueWithIdentifier:@"database" sender:self];
}
@end
