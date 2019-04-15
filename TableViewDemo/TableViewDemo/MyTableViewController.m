//
//  MyTableViewController.m
//  TableViewDemo
//
//  Created by JETS Mobile Lab - 5 on 4/15/19.
//  Copyright © 2019 ios. All rights reserved.
//

#import "MyTableViewController.h"
#import "Friend.h"
#import "SecondViewController.h"
@interface MyTableViewController ()

@end

@implementation MyTableViewController{
    NSMutableArray *males;
    NSMutableArray *females;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    males=[NSMutableArray new];
    females=[NSMutableArray new];
    [males addObject:[ [Friend alloc] initwithName:@"amr" andPhone:@"012" andAge:@"24" andEmail:@"amr@gmail.com"]];
    [males addObject:[ [Friend alloc] initwithName:@"hesham" andPhone:@"014" andAge:@"44" andEmail:@"hesham@gmail.com"]];
    [males addObject:[ [Friend alloc] initwithName:@"abdelhalim" andPhone:@"015" andAge:@"74" andEmail:@"abdelhalim@gmail.com"]];
    
    [females addObject:[ [Friend alloc] initwithName:@"esraa" andPhone:@"010" andAge:@"23" andEmail:@"esraa@gmail.com"]];
    [females addObject:[ [Friend alloc] initwithName:@"sahar" andPhone:@"017" andAge:@"22" andEmail:@"sahar@gmail.com"]];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger NUMOFROWS;
    switch (section) {
        case 0:
            NUMOFROWS=[males count];
            break;
        case 1:
            NUMOFROWS=[females count];
            break;
        default:
            NUMOFROWS=0;
            break;
    }
#warning Incomplete implementation, return the number of rows
    return NUMOFROWS;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if(indexPath.section==0){
        cell.textLabel.text=[[males objectAtIndex:indexPath.row] name];
    }else{
        cell.textLabel.text=[[females objectAtIndex:indexPath.row] name];
    }
    // Configure the cell...
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    NSString *sectionTitle;
    switch (section) {
            
        case 0:
            sectionTitle= @"males";
            break;
        case 1:
            sectionTitle= @"females";
            break;
        default:
            sectionTitle=@"default";
            break;
    }
    return sectionTitle;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if(indexPath.section==0){
        SecondViewController *secondVC=[self.storyboard instantiateViewControllerWithIdentifier:@"secondview"];
        [secondVC setFriendObj: [males objectAtIndex:indexPath.row]];
        [self.navigationController pushViewController:secondVC animated:YES];
        
    }else if(indexPath.section==1){
        SecondViewController *secondVC=[self.storyboard instantiateViewControllerWithIdentifier:@"secondview"];
        [secondVC setFriendObj: [females objectAtIndex:indexPath.row]];
        [self.navigationController pushViewController:secondVC animated:YES];    }
}
/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
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
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
