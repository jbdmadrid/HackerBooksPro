#import "KCGBook.h"

@interface KCGBook ()

// Private interface goes here.

@end

@implementation KCGBook

// Custom logic goes here.
+(instancetype) noteWithName: (NSString*) title
                        tags: (KCGBookTag *) tags
                      author: (KCGBookAuthor *) author
                         pdf: (KCGPdf *) pdf
                       photo: (KCGPhoto *) photo
                  annotation: (KCGAnnotation *) annotation
                    context :(NSManagedObjectContext *) context{
    KCGBook *kb = [self insertInManagedObjectContext:context];

    
    
    kb.booktags = tags;
    kb.bookauthors = author;
    kb.pdfs = pdf;
    kb.photos = photo;
    kb.annotations = annotation;
    
    return kb;
    
}

@end
