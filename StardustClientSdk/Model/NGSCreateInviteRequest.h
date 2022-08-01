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


#import "NGSCreateProjectRequest.h"
#import "NGSParticipantRequest.h"
@protocol NGSCreateProjectRequest;
@class NGSCreateProjectRequest;
@protocol NGSParticipantRequest;
@class NGSParticipantRequest;



@protocol NGSCreateInviteRequest
@end

@interface NGSCreateInviteRequest : NGSObject


@property(nonatomic) NSString* _resourcePath;

@property(nonatomic) NGSParticipantRequest* sender;

@property(nonatomic) NGSParticipantRequest* recipient;

@property(nonatomic) NGSCreateProjectRequest* projectRequest;

@end
