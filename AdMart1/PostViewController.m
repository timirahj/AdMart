//
//  PostViewController.m
//  AdMart1
//
//  Created by kerlex2 on 1/12/15.
//  Copyright (c) 2015 kerlex2. All rights reserved.
//

#import "PostViewController.h"

@interface PostViewController ()
{
    NSMutableArray *mutableArray;
    NSArray *menu;
}

@end

@implementation PostViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    menu = @[@"Company",@"Description", @"Price", @"Type", @"Duration", @"Other info.", @"Agreement/Contract:"];
    
    
    self->mutableArray = [[NSMutableArray alloc]initWithArray:menu];
    
}


#pragma mark - Table View Data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    return [self->mutableArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellIdentifier forIndexPath:indexPath];
   
  cell.textLabel.text = [menu objectAtIndex:indexPath.row];
    
    return cell;
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
