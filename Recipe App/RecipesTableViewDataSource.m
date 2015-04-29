//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Justin Oakes on 4/29/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"
#import "RATableViewCell.h"

@implementation RecipesTableViewDataSource

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [RARecipes count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RATableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (!cell){
        cell = [[RATableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    cell.textLabel.text = [RARecipes recipeAtIndex:indexPath.row][@"recipeTitle"];
    cell.detailTextLabel.text = [RARecipes recipeAtIndex:indexPath.row][@"recipeDescription"];
    NSLog(@"%@", cell.detailTextLabel.text);
    NSLog(@"%@", [RARecipes recipeAtIndex:indexPath.row][@"recipeDescription"]);
    
    NSLog(@"[RATableViewCell class] == %@", [RATableViewCell class]);
    
    return cell;
    
}


-(void)regesterTableView:(UITableView *)tableView {
    
    [tableView registerClass:[RATableViewCell class] forCellReuseIdentifier:cellID];
    
}
@end
