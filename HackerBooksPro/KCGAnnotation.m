#import "KCGAnnotation.h"

@interface KCGAnnotation ()

// Private interface goes here.

@end

@implementation KCGAnnotation

// Custom logic goes here.

+(instancetype) noteWithName: (NSString*) test
                       book :(KCGBook *) book
                    context :(NSManagedObjectContext *) context{
    
    KCGAnnotation *ka = [self insertInManagedObjectContext:context];
    ka.test = test;
    ka.books = book;
    return ka;
    
}

@end
