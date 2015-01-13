//
//  iPadPostViewController.m
//  AdMart1
//
//  Created by kerlex2 on 1/5/15.
//  Copyright (c) 2015 kerlex2. All rights reserved.
//

#import "iPadPostViewController.h"

@interface iPadPostViewController ()

@end

@implementation iPadPostViewController
@synthesize myArray;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    
    
  //  myArray = @["", ""];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section{
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath{
    
    static NSString *cellIdentifier = @"cellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    
    // Configure the cell...
    return cell;
    
}


#pragma mark - TableView delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
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
