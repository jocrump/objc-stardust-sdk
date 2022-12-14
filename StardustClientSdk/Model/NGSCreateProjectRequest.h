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


#import "NGSAddress.h"
#import "NGSParticipantRequest.h"
@protocol NGSAddress;
@class NGSAddress;
@protocol NGSParticipantRequest;
@class NGSParticipantRequest;



@protocol NGSCreateProjectRequest
@end

@interface NGSCreateProjectRequest : NGSObject


@property(nonatomic) NSString* projectGroupIdentifier;

@property(nonatomic) NSString* projectName;

@property(nonatomic) NSArray<NSString*>* resourcePaths;

@property(nonatomic) NGSAddress* lossAddress;

@property(nonatomic) NGSAddress* officeAddress;

@property(nonatomic) NSDate* estimatedCompletionDateUtc;

@property(nonatomic) NSDate* startDateUtc;

@property(nonatomic) NSString* companyName;

@property(nonatomic) NSString* emailAddress;

@property(nonatomic) NSString* webReviewUri;

@property(nonatomic) NSString* websiteUri;

@property(nonatomic) NGSParticipantRequest* lossAddressContact;

@property(nonatomic) NGSParticipantRequest* initiator;

@property(nonatomic) NGSParticipantRequest* technician;

@property(nonatomic) NSArray<NGSParticipantRequest>* externalParticipants;

@end
