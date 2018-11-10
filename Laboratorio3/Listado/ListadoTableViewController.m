//
//  ListadoTableViewController.m
//  Laboratorio3
//
//  Created by Samuel Vasilovski on 10/11/18.
//  Copyright © 2018 SAMUEL VASILOVSKI. All rights reserved.
//

#import "ListadoTableViewController.h"
#import "CeldaTableViewCell.h"

@interface ListadoTableViewController()
@property NSUserDefaults *defaults;

@property NSArray *dataDictionary;
@end

@implementation ListadoTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.defaults =[NSUserDefaults standardUserDefaults];
    self.wirteJson;
}

-(NSDictionary *)getContent{
    NSString *filePath =[[NSBundle mainBundle]pathForResource:@"data" ofType:@"json"];
    NSData *content = [[NSData alloc]initWithContentsOfFile:filePath];
    NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:content options:0 error:nil];
    return dataDictionary;
}

-(void)wirteJson{
    self.dataDictionary = (NSArray *)self.getContent;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [self.dataDictionary count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CeldaTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"producto cell" forIndexPath:indexPath];
    NSDictionary *datacell = [self.dataDictionary objectAtIndex:indexPath.row];
    
    cell.descripcion = [datacell objectForKey:@"desc"];
    cell.cantidad = [datacell objectForKey:@"cant"];
    return cell;
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


-(void)deslogear{
    [self.defaults setValue:@"" forKey:@"name"];
    NSString *name = [_defaults valueForKey:@"name"];
    
    if(![name isEqualToString:@""]){
        NSLog(@"Usuario deslogeado");
    }
}
@end
