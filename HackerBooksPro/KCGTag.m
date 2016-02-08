#import "KCGTag.h"

@interface KCGTag ()

// Private interface goes here.

@end

@implementation KCGTag

// Custom logic goes here.
+(instancetype) noteWithName: (NSString*) name
                        booktag :(KCGBookTag *) booktag
                    context :(NSManagedObjectContext *) context{
    
    KCGTag *kt = [self insertInManagedObjectContext:context];
    kt.nameTag = name;
    kt.booktags = booktag;
    
    return kt;
    
}
+(NSArray *)observableKeys{
    return @[@"name",@"books"];
}

#pragma mark - Life cycle
-(void) awakeFromInsert{
    [super awakeFromInsert];
    
    [self setupKVO];
    
}
-(void) awakeFromFetch{
    [super awakeFromFetch];
    
    [self setupKVO];
    
}
-(void) willTurnIntoFault{
    [super willTurnIntoFault];
    
    [self tearDownKVO];
    
}

#pragma mark - KVO
-(void) setupKVO{
    
    //Alta notificacion
    for (NSString *key in [self.class observableKeys]){
        [self addObserver:self forKeyPath:@"name"
                  options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                  context:NULL];
    }
    
}
-(void)tearDownKVO{
    
    for (NSString *key in [self.class observableKeys]){
        [self removeObserver: self
                  forKeyPath:key];
    }
    
    
    
}



@end