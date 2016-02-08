#import "_KCGPdf.h"
#import "KCGBook.h"

@interface KCGPdf : _KCGPdf {}
// Custom logic goes here.
+(instancetype) noteWithName: (NSString*) url
                   notebook :(KCGBook *) book
                        data: (NSData *)data
                    context :(NSManagedObjectContext *) context;
@end
