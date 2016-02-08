#import "_KCGBook.h"
#import "KCGTag.h"
#import "KCGAuthor.h"
#import "KCGPdf.h"
#import "KCGPhoto.h"
#import "KCGAnnotation.h"
#import "KCGBookAuthor.h"
#import "KCGBookTag.h"

@interface KCGBook : _KCGBook {}
// Custom logic goes here.
+(instancetype) noteWithName: (NSString*) title
                        tags: (KCGBookTag *) tags
                      author: (KCGBookAuthor *) author
                         pdf: (KCGPdf *) pdf
                       photo: (KCGPhoto *) photo
                  annotation: (KCGAnnotation *) annotation
                    context :(NSManagedObjectContext *) context;

@end
