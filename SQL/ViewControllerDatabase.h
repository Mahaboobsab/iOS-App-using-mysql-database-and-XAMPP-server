//
//  ViewControllerDatabase.h
//  SQL
//
//  Created by Meheboob Nadaf on 25/08/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewCell.h"

#define kGETUrl @"http://localhost/getJson.php"
@interface ViewControllerDatabase : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property(strong,nonatomic)NSMutableArray *getJson;

@property(strong,nonatomic)NSArray *userId;
@property(strong,nonatomic)NSArray *userName;

@property(strong,nonatomic)NSArray *userMsg;
@end
