// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGBook.h instead.

@import CoreData;

extern const struct KCGBookAttributes {
	__unsafe_unretained NSString *title;
} KCGBookAttributes;

extern const struct KCGBookRelationships {
	__unsafe_unretained NSString *annotations;
	__unsafe_unretained NSString *bookauthors;
	__unsafe_unretained NSString *booktags;
	__unsafe_unretained NSString *pdfs;
	__unsafe_unretained NSString *photos;
} KCGBookRelationships;

@class KCGAnnotation;
@class KCGBookAuthor;
@class KCGBookTag;
@class KCGPdf;
@class KCGPhoto;

@interface KCGBookID : NSManagedObjectID {}
@end

@interface _KCGBook : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) KCGBookID* objectID;

@property (nonatomic, strong) NSString* title;

//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) KCGAnnotation *annotations;

//- (BOOL)validateAnnotations:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSSet *bookauthors;

- (NSMutableSet*)bookauthorsSet;

@property (nonatomic, strong) NSSet *booktags;

- (NSMutableSet*)booktagsSet;

@property (nonatomic, strong) KCGPdf *pdfs;

//- (BOOL)validatePdfs:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) KCGPhoto *photos;

//- (BOOL)validatePhotos:(id*)value_ error:(NSError**)error_;

@end

@interface _KCGBook (BookauthorsCoreDataGeneratedAccessors)
- (void)addBookauthors:(NSSet*)value_;
- (void)removeBookauthors:(NSSet*)value_;
- (void)addBookauthorsObject:(KCGBookAuthor*)value_;
- (void)removeBookauthorsObject:(KCGBookAuthor*)value_;

@end

@interface _KCGBook (BooktagsCoreDataGeneratedAccessors)
- (void)addBooktags:(NSSet*)value_;
- (void)removeBooktags:(NSSet*)value_;
- (void)addBooktagsObject:(KCGBookTag*)value_;
- (void)removeBooktagsObject:(KCGBookTag*)value_;

@end

@interface _KCGBook (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;

- (KCGAnnotation*)primitiveAnnotations;
- (void)setPrimitiveAnnotations:(KCGAnnotation*)value;

- (NSMutableSet*)primitiveBookauthors;
- (void)setPrimitiveBookauthors:(NSMutableSet*)value;

- (NSMutableSet*)primitiveBooktags;
- (void)setPrimitiveBooktags:(NSMutableSet*)value;

- (KCGPdf*)primitivePdfs;
- (void)setPrimitivePdfs:(KCGPdf*)value;

- (KCGPhoto*)primitivePhotos;
- (void)setPrimitivePhotos:(KCGPhoto*)value;

@end
