#import "KCGBookAuthor.h"

@interface KCGBookAuthor ()

// Private interface goes here.

@end

@implementation KCGBookAuthor

// Custom logic goes here.
+(instancetype) noteWithName: (KCGAuthor *) name
                       book :(KCGBook *) book
                    context :(NSManagedObjectContext *) context{
    
    
    KCGBookAuthor *kba = [self insertInManagedObjectContext:context];
    
    kba.authors = name;
    kba.books = book;
    
    
    return kba;
    
}

@end
