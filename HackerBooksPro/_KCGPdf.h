// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to KCGPdf.h instead.

@import CoreData;

extern const struct KCGPdfAttributes {
	__unsafe_unretained NSString *data;
	__unsafe_unretained NSString *urlString;
} KCGPdfAttributes;

extern const struct KCGPdfRelationships {
	__unsafe_unretained NSString *books;
} KCGPdfRelationships;

@class KCGBook;

@interface KCGPdfID : NSManagedObjectID {}
@end

@interface _KCGPdf : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) KCGPdfID* objectID;

@property (nonatomic, strong) NSData* data;

//- (BOOL)validateData:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) NSString* urlString;

//- (BOOL)validateUrlString:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) KCGBook *books;

//- (BOOL)validateBooks:(id*)value_ error:(NSError**)error_;

@end

@interface _KCGPdf (CoreDataGeneratedPrimitiveAccessors)

- (NSData*)primitiveData;
- (void)setPrimitiveData:(NSData*)value;

- (NSString*)primitiveUrlString;
- (void)setPrimitiveUrlString:(NSString*)value;

- (KCGBook*)primitiveBooks;
- (void)setPrimitiveBooks:(KCGBook*)value;

@end
