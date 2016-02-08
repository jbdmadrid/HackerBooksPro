//
//  KCGBooksViewController.m
//  HackerBooksPro
//
//  Created by Juan Barba Díaz on 5/2/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

#import "KCGBooksViewController.h"
#import "KCGBook.h"
#import "KCGBookAuthor.h"
#import "KCGAuthor.h"
#import "KCGBookAuthor.h"
#import "KCGBookViewController.h"

@interface KCGBooksViewController ()

@property (nonatomic, strong) KCGTag *tags;

@end

@implementation KCGBooksViewController

-(id) initWithFetchedResultsController:(NSFetchedResultsController *)aFetchedResultsController style:(UITableViewStyle)aStyle tag:(KCGTag*) tag{
    
    if (self = [super initWithFetchedResultsController:aFetchedResultsController style:aStyle]) {
        _tags = tag;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Data Source
-(UITableViewCell*) tableView:(UITableView *)tableView
        cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *cellID = @"NoteCell";
    
    // Obtener el book
    KCGBook *book = [self.fetchedResultsController objectAtIndexPath:indexPath];
    KCGBookAuthor * author = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    // Crear la celda
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellID];
    }
    
    // Sinc book -> celda
    cell.imageView.image = book.photos.image;
    cell.textLabel.text = book.title;
    cell.detailTextLabel.text = author.authors.nameAuthor;
    
    // Devolver la celda
    return cell;
    
    
    
}
-(void) tableView:(UITableView *)tableView
didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    // Obtener la nota
    KCGBook *books = [self.fetchedResultsController objectAtIndexPath:indexPath];
    
    
    // Crear el controlador
    KCGBookViewController *bVC = [[KCGBookViewController alloc]
                                  initWithModel:books];
    
    // Hacer el push
    [self.navigationController pushViewController:bVC
                                         animated:YES];
    
    
}




@end
