#import "_KCGAuthor.h"
#import "KCGBook.h"
#import "KCGBookAuthor.h"

@interface KCGAuthor : _KCGAuthor {}
// Custom logic goes here.
+(instancetype) noteWithName: (NSString*) name
                       bookauthor :(KCGBookAuthor *) bookauthor
                    context :(NSManagedObjectContext *) context;
@end
