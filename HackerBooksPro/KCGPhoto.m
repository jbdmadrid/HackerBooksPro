#import "KCGPhoto.h"

@interface KCGPhoto ()

// Private interface goes here.

@end

@implementation KCGPhoto

// Custom logic goes here.
-(UIImage *) image{
    
    return [UIImage imageWithData:self.imageData];
    
}
-(void) setImage:(UIImage *)image{
    [self setImageData:UIImageJPEGRepresentation(image, 1.0f)];
}

@end
