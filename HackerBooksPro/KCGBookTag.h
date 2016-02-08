#import "_KCGBookTag.h"
#import "KCGBook.h"
#import "KCGTag.h"

@interface KCGBookTag : _KCGBookTag {}
// Custom logic goes here.
+(instancetype) noteWithName: (KCGTag *) name
                       book :(KCGBook *) book
                    context :(NSManagedObjectContext *) context;

@end
