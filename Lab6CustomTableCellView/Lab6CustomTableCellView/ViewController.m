//
//  ViewController.m
//  Lab6CustomTableCellView
//
//  Created by JETS Mobile Lab - 5 on 4/24/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSArray * firstLabelArray;
    NSArray * secondLabelArray;
    NSArray * imagesArray;
}
@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    firstLabelArray=@[@"one",@"two",@"three"];
    [_myTableView setDelegate:self];
    [_myTableView setDataSource:self];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return firstLabelArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.text=[firstLabelArray objectAtIndex:indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

@end
