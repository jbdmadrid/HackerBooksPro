#import "KCGPdf.h"

@interface KCGPdf ()

// Private interface goes here.

@end

@implementation KCGPdf

// Custom logic goes here.
+(instancetype) noteWithName: (NSString*) url
                   notebook :(KCGBook *) book
                        data: (NSData *)data
                    context :(NSManagedObjectContext *) context{
    
    
    KCGPdf *kp = [self insertInManagedObjectContext:context];
    kp.urlString = url;
    kp.data = data;
    kp.books = book;
    
    return kp;
    
    
}

@end
