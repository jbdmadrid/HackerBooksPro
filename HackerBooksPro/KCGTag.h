#import "_KCGTag.h"
#import "KCGBook.h"
#import "KCGBookTag.h"

@interface KCGTag : _KCGTag {}
// Custom logic goes here.
+(instancetype) noteWithName: (NSString*) name
                    booktag :(KCGBookTag *) booktag
                    context :(NSManagedObjectContext *) context;
@end
