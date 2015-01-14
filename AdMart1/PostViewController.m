//
//  PostViewController.m
//  AdMart1
//
//  Created by kerlex2 on 1/12/15.
//  Copyright (c) 2015 kerlex2. All rights reserved.
//

#import "PostViewController.h"
#import "PostCell.h"

@interface PostViewController ()
{
    NSMutableArray *mutableArray;
    NSArray *menu;
}

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation PostViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    menu = @[@"Company",@"Description", @"Price", @"Type", @"Duration", @"Other info.", @"Agreement/Contract:"];
    
    
    self->mutableArray = [[NSMutableArray alloc]initWithArray:menu];
    
   
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
     //Set index to -1, saying no cell is expanded or should expand.
    selectedIndex = -1;
    
   // titleArray = [[NSMutableArray alloc]init];
    NSString *string;
    
    //Create consecutive array of 8 numbers. 1..2..etc.
    for (int ii = 1; ii <= 7; ii++){
        string = [[NSString alloc] initWithFormat:@"Row %i", ii];
        [self->mutableArray addObject:string];
    }
    
    
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
    static NSString *cellIdentifier = @"postCell";
    
    PostCell *cell = (PostCell *)[tableView dequeueReusableCellWithIdentifier:
                             cellIdentifier];
   
    if(cell == nil){
        NSArray *nib = [[NSBundle mainBundle]loadNibNamed:@"postCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    //Later:
    if(selectedIndex == indexPath.row){
        //Do expanded cell stuff
    }
    else {
        //Do closed cell stuff
        
        
    }
    
  cell.titleLabel.text = [mutableArray objectAtIndex:indexPath.row];
    cell.textLabel.text = [textArray objectAtIndex:indexPath.row];
    int calculation = (indexPath.row +1) * 25;
    cell.calculationLabel.text = [NSString stringWithFormat:@"%i",calculation];
    
    return cell;
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(selectedIndex == indexPath.row){
        return 130;
    }
    else{
        return 60;
    }
    
}




-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{

//    //User taps expanded row
//    if(selectedIndex == indexPath.row){
//        selectedIndex = -1;
//       
//        [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
//    }
//         
//         //User taps different row
//         if(selectedIndex != -1){
//             NSIndexPath *prevPath = [NSIndexPath indexPathForRow:selectedIndex inSection:0];
//                                      selectedIndex = indexPath.row;
//             [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:prevPath] withRowAnimation:UITableViewRowActionStyleDefault];
//         }
//    
//    //User taps new row with none expanded
//    selectedIndex = indexPath.row;
//    [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowActionStyleDefault];
    
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
