#import "_KCGBookAuthor.h"
#import "KCGBook.h"
#import "KCGAuthor.h"

@interface KCGBookAuthor : _KCGBookAuthor {}
// Custom logic goes here.
+(instancetype) noteWithName: (KCGAuthor *) name
                       book :(KCGBook *) book
                    context :(NSManagedObjectContext *) context;
@end
