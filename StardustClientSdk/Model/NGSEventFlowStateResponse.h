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





@protocol NGSEventFlowStateResponse
@end

@interface NGSEventFlowStateResponse : NGSObject


@property(nonatomic) NSString* eventFlowStateResponseIdentifier;

@property(nonatomic) NSDate* dateChangedUtc;

@property(nonatomic) NSString* state;

@property(nonatomic) NSString* notes;

@end
