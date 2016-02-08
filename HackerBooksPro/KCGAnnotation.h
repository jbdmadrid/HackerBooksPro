#import "_KCGAnnotation.h"
#import "KCGBook.h"

@interface KCGAnnotation : _KCGAnnotation {}
// Custom logic goes here.
+(instancetype) noteWithName: (NSString*) test
                       book :(KCGBook *) book
                    context :(NSManagedObjectContext *) context;
@end
