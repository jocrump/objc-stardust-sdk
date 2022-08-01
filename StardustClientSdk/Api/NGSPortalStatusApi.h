#import <Foundation/Foundation.h>
#import "NGSPortalStatusResponse.h"
#import "NGSProblemDetails.h"
#import "NGSApi.h"

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



@interface NGSPortalStatusApi: NSObject <NGSApi>

extern NSString* kNGSPortalStatusApiErrorDomain;
extern NSInteger kNGSPortalStatusApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(NGSApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// 
/// 
///
/// @param portalIdentifier 
/// @param xClientIdentifier Client Identifier (default to Set Client Identifier)
/// @param xAPIKey Client API Key (default to Set Key)
/// 
///  code:200 message:"",
///  code:401 message:""
///
/// @return NGSPortalStatusResponse*
-(NSURLSessionTask*) getPortalStatusWithPortalIdentifier: (NSString*) portalIdentifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NGSPortalStatusResponse* output, NSError* error)) handler;



@end
