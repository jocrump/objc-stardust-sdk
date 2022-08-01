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


#import "NGSAddressType.h"
@protocol NGSAddressType;
@class NGSAddressType;



@protocol NGSAddress
@end

@interface NGSAddress : NGSObject


@property(nonatomic) NSString* address1;

@property(nonatomic) NSString* address2;

@property(nonatomic) NSString* city;

@property(nonatomic) NSString* stateProvince;

@property(nonatomic) NSString* postalCode;

@property(nonatomic) NSString* country;

@property(nonatomic) NGSAddressType* addressType;

@end
