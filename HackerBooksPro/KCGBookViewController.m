//
//  KCGBookViewController.m
//  HackerBooksPro
//
//  Created by Juan Barba Díaz on 8/2/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

#import "KCGBookViewController.h"

@interface KCGBookViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextField *authorTextField;
@property (weak, nonatomic) IBOutlet UIWebView *pdfWebView;

@property (strong, nonatomic) KCGBook *model;


@end

@implementation KCGBookViewController

#pragma mark - Initialization


-(id) initWithModel: (KCGBook*) model{
    
    if(self = [super initWithNibName:nil bundle:nil]){
    
        
        _model = model;
        
    }
    
    return self;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
