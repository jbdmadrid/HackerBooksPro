// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGPhoto.h instead.

@import CoreData;

extern const struct KCGPhotoAttributes {
	__unsafe_unretained NSString *imageData;
} KCGPhotoAttributes;

extern const struct KCGPhotoRelationships {
	__unsafe_unretained NSString *books;
} KCGPhotoRelationships;

@class KCGBook;

@interface KCGPhotoID : NSManagedObjectID {}
@end

@interface _KCGPhoto : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) KCGPhotoID* objectID;

@property (nonatomic, strong) NSData* imageData;

//- (BOOL)validateImageData:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) KCGBook *books;

//- (BOOL)validateBooks:(id*)value_ error:(NSError**)error_;

@end

@interface _KCGPhoto (CoreDataGeneratedPrimitiveAccessors)

- (NSData*)primitiveImageData;
- (void)setPrimitiveImageData:(NSData*)value;

- (KCGBook*)primitiveBooks;
- (void)setPrimitiveBooks:(KCGBook*)value;

@end
