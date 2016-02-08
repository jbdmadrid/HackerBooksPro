#import "KCGBookTag.h"

@interface KCGBookTag ()

// Private interface goes here.

@end

@implementation KCGBookTag

// Custom logic goes here.
+(instancetype) noteWithName: (KCGTag *) name
                       book :(KCGBook *) book
                    context :(NSManagedObjectContext *) context{
    
    KCGBookTag *kbt = [self insertInManagedObjectContext:context];
    kbt.booktags = name;
    kbt.books = book;
    
    return kbt;
    
    
    
}

@end
