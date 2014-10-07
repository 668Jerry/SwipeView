//
//  TableViewController.h
//  SwipeViewExample
//
//  Created by lololol on 7/Oct/14.
//
//

#import <UIKit/UIKit.h>
#import "SwipeView.h"

@interface TableViewController : UITableViewController <SwipeViewDelegate, SwipeViewDataSource>

@property (nonatomic, strong) SwipeView *swipeView;

@end
