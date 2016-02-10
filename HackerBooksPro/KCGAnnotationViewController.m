//
//  KCGAnnotationViewController.m
//  HackerBooksPro
//
//  Created by Juan Barba Díaz on 9/2/16.
//  Copyright © 2016 KeepCoding. All rights reserved.
//

#import "KCGAnnotationViewController.h"

@interface KCGAnnotationViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleBook;
@property (weak, nonatomic) IBOutlet UILabel *creationDate;
@property (weak, nonatomic) IBOutlet UILabel *modificationDate;
@property (weak, nonatomic) IBOutlet UITextView *annotationText;

@property (weak, nonatomic) IBOutlet UIToolbar *bottomToolbar;
@property (strong, nonatomic) KCGBook *model;

@property (nonatomic) CGRect oldFrame;
@property (nonatomic) double animationDuration;
@property (nonatomic) BOOL isKeyBoardVisible;

@end

@implementation KCGAnnotationViewController

#pragma mark - Initialization

-(id) initWithModel: (KCGBook*) model{
    
    if(self = [super initWithNibName:nil
                              bundle:nil]){
        
        _model = model;
        
    }
    
    return self;
    
}
#pragma mark - Life cycle
-(void) viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    // sincronizamos modelo -> vistas
    NSDateFormatter *fmt = [NSDateFormatter new];
    fmt.dateStyle = NSDateFormatterShortStyle;
    
    self.creationDate.text = [fmt stringFromDate:self.model.annotations.creationDate];
    self.modificationDate.text = [fmt stringFromDate:self.model.annotations.modificationDate];
    self.titleBook.text = self.model.title;
    self.annotationText.text = self.model.annotations.test;
    
    //alta en notificaciones del teclado
    [self startObservingKeyboard];
    
    
    
}

-(void) viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    // sincronizamos vistas -> modelo
    self.model.annotations.test = self.annotationText.text;
 
    
    //bajade notificaciones del teclaod
    [self stopObservingKeyboard];
    
    
    
}
#pragma mark - Notifications
-(void) startObservingKeyboard{
    
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc addObserver:self
           selector:@selector(keyboardWillAppear:)
               name:UIKeyboardWillShowNotification
             object:nil];
    
    [nc addObserver:self
           selector:@selector(keyboardWillDissappear:)
               name:UIKeyboardWillHideNotification
             object:nil];
}


-(void) stopObservingKeyboard{
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    [nc removeObserver:self];
}

-(void) keyboardWillAppear:(NSNotification *)note{
    
    if (!self.isKeyBoardVisible) {
        
        self.isKeyBoardVisible = YES;
        
        NSDictionary *info = note.userInfo;
        
        self.animationDuration = [[info objectForKey:UIKeyboardAnimationDurationUserInfoKey] doubleValue];
        CGRect oldFrame = self.annotationText.frame;
        
        CGRect kbdFrame = [[info objectForKey:UIKeyboardFrameEndUserInfoKey]
                           CGRectValue];
        CGRect newFrame = CGRectMake(oldFrame.origin.x,
                                     oldFrame.origin.y,
                                     oldFrame.size.width,
                                     oldFrame.size.height - kbdFrame.size.height + self.bottomToolbar.bounds.size.height);
        
        [UIView animateWithDuration:self.animationDuration
                         animations:^{
                             self.annotationText.frame = newFrame;
                         }];
        
    }
    
    
    
}

-(void) keyboardWillDissappear:(NSNotification *)note{
    
    NSDictionary *info = note.userInfo;
    
    CGRect oldFrame = self.annotationText.frame;
    CGRect kbdFrame = [[info objectForKey:UIKeyboardFrameEndUserInfoKey]
                       CGRectValue];
    
    CGRect newFrame = CGRectMake(oldFrame.origin.x,
                                 oldFrame.origin.y,
                                 oldFrame.size.width,
                                 oldFrame.size.height + kbdFrame.size.height - self.bottomToolbar.bounds.size.height);
    
    
    [UIView animateWithDuration:self.animationDuration
                     animations:^{
                         self.annotationText.frame = newFrame;
                     }];
    
    self.isKeyBoardVisible = false;
}


@end
