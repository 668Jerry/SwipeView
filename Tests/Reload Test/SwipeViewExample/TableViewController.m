//
//  TableViewController.m
//  SwipeViewExample
//
//  Created by lololol on 7/Oct/14.
//
//

#import "TableViewController.h"

@interface TableViewController ()

@property (nonatomic, strong) NSMutableArray *colors;

@end

@implementation TableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)setMyReload
{
    
}

- (void)setMyForwards
{
    
}

- (void)setMyBackwards
{
    
}

- (void)reload
{
    //set up colors
    self.colors = [NSMutableArray array];
    for (int i = 0; i < arc4random_uniform(1000) + 2; i++)
    {
        [self.colors addObject:[UIColor colorWithRed:drand48()
                                               green:drand48()
                                                blue:drand48()
                                               alpha:1.0f]];
    }
    
    //reload content
    [_swipeView reloadData];
}

- (void)forwards
{
    [_swipeView scrollByNumberOfItems:1 duration:1.4];
}

- (void)backwards
{
    [_swipeView scrollByNumberOfItems:-1 duration:1.4];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setMyReload];
    [self setMyForwards];
    [self setMyBackwards];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    return YES;
//}

- (NSInteger)numberOfItemsInSwipeView:(SwipeView *)swipeView
{
    return [self.colors count];
}

- (UIView *)swipeView:(SwipeView *)swipeView viewForItemAtIndex:(NSInteger)index reusingView:(UIView *)view
{
    UILabel *label = (UILabel *)view;
    
    //create or reuse view
    if (view == nil)
    {
        label = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 320.0f, 200.0f)];
        label.textAlignment = UITextAlignmentCenter;
        label.textColor = [UIColor whiteColor];
        view = label;
    }
    
    //configure view
    label.backgroundColor = (self.colors)[index];
    label.text = [NSString stringWithFormat:@"%i", index];
    
    //return view
    return view;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
