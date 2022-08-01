#import <Foundation/Foundation.h>
#import "NGSObject.h"

/**
* Stardust API
* Stardust is the supporting API for the ProAssist app
*
* OpenAPI spec version: v2
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/





@protocol NGSProblemDetails
@end

@interface NGSProblemDetails : NGSObject


@property(nonatomic) NSString* type;

@property(nonatomic) NSString* title;

@property(nonatomic) NSNumber* status;

@property(nonatomic) NSString* detail;

@property(nonatomic) NSString* instance;

@property(nonatomic) NSDictionary<NSString*, NSObject*>* extensions;

@end