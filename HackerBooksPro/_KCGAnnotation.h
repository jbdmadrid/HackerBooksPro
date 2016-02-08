// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGAnnotation.h instead.

@import CoreData;

extern const struct KCGAnnotationAttributes {
	__unsafe_unretained NSString *creationDate;
	__unsafe_unretained NSString *modificationDate;
	__unsafe_unretained NSString *test;
} KCGAnnotationAttributes;

extern const struct KCGAnnotationRelationships {
	__unsafe_unretained NSString *books;
} KCGAnnotationRelationships;

@class KCGBook;

@interface KCGAnnotationID : NSManagedObjectID {}
@end

@interface _KCGAnnotation : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) KCGAnnotationID* objectID;

@property (nonatomic, strong) NSDate* creationDate;

//- (BOOL)validateCreationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSDate* modificationDate;

//- (BOOL)validateModificationDate:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* test;

//- (BOOL)validateTest:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) KCGBook *books;

//- (BOOL)validateBooks:(id*)value_ error:(NSError**)error_;

@end

@interface _KCGAnnotation (CoreDataGeneratedPrimitiveAccessors)

- (NSDate*)primitiveCreationDate;
- (void)setPrimitiveCreationDate:(NSDate*)value;

- (NSDate*)primitiveModificationDate;
- (void)setPrimitiveModificationDate:(NSDate*)value;

- (NSString*)primitiveTest;
- (void)setPrimitiveTest:(NSString*)value;

- (KCGBook*)primitiveBooks;
- (void)setPrimitiveBooks:(KCGBook*)value;

@end
