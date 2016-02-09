//
//  KCGBookViewController.m
//  HackerBooksPro
//
//  Created by Juan Barba Díaz on 8/2/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

#import "KCGBookViewController.h"
#import "KCGBookAuthor.h"

@interface KCGBookViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *authorLabel;
@property (weak, nonatomic) IBOutlet UIWebView *pdfWebView;



@property (strong, nonatomic) KCGBook *model;
@property (strong, nonatomic) KCGBookAuthor *modelAu;


@end

@implementation KCGBookViewController

#pragma mark - Initialization


-(id) initWithModel: (KCGBook*) model{
    
    if(self = [super initWithNibName:nil bundle:nil]){
    
        
        _model = model;
        
    }
    
    return self;
    
}


#pragma mark - Life Cycle
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // sincronizamos modelo -> vistas
    
    
    self.titleLabel.text = self.model.title;
    self.authorLabel.text = self.modelAu.authors.nameAuthor;
    self.pdfWebView.dataDetectorTypes = self.model.pdfs.data;
    
}

- (IBAction)buttonAnnotation:(id)sender {
}


@end
