#import "KCGAuthor.h"

@interface KCGAuthor ()

// Private interface goes here.

@end

@implementation KCGAuthor

// Custom logic goes here.
+(instancetype) noteWithName: (NSString*) name
                       bookauthor :(KCGBookAuthor *) bookauthor
                    context :(NSManagedObjectContext *) context{
    KCGAuthor *ka = [self insertInManagedObjectContext:context];
    
     ka.nameAuthor = name;
     ka.bookauthors = bookauthor;
    
    return ka;

}
@end
