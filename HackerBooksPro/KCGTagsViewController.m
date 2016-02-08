//
//  KCGTagsViewController.m
//  HackerBooksPro
//
//  Created by Juan Barba Díaz on 1/2/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

#import "KCGTagsViewController.h"
#import "KCGTag.h"
#import "KCGBookTag.h"
#import "KCGBooksViewController.h"

@interface KCGTagsViewController ()

@end

@implementation KCGTagsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellID = @"TagCell";
    
    // Averiguar qué tag es
    KCGTag *ktag = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    // Crear la celda
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        // Creamos la celda de la nada
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    // Sincronizar tag -> celda
    cell.textLabel.text = ktag.nameTag;
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateStyle = NSDateFormatterShortStyle;
   
    
    
    // Devolvemos la celda
    return cell;
}


#pragma mark - Navigation
-(void) tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // Obtener la libreta
    KCGTag *ktag = [self.fetchedResultsController
                       objectAtIndexPath:indexPath];
    
    // Crear el fetch request
    NSFetchRequest *r = [[NSFetchRequest alloc] initWithEntityName:[KCGBookTag entityName]];
    
    // Configurarlo con un predicado
    r.fetchBatchSize = 25;
    r.sortDescriptors = @[[NSSortDescriptor
                           sortDescriptorWithKey:KCGBookAttributes.title
                           ascending:YES
                           selector:@selector(caseInsensitiveCompare:)]];
    r.predicate = [NSPredicate predicateWithFormat:@"tag == %@", ktag];
    
    // Crear el fetchedResults
    NSFetchedResultsController *fc = [[NSFetchedResultsController alloc] initWithFetchRequest:r managedObjectContext:ktag.managedObjectContext sectionNameKeyPath:nil cacheName:[[NSUUID new]UUIDString]];
    
 
    // Crear el controlador
  
    
    KCGBooksViewController *bVC =[[KCGBooksViewController alloc] initWithFetchedResultsController:fc style:UITableViewStyleGrouped tag:ktag];
    
    
    // Pushearlo
    [self.navigationController pushViewController:bVC
                                         animated:YES];
  
}



@end
