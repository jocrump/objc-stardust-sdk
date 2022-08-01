#import <Foundation/Foundation.h>
#import "NGSCurrentStateResponse.h"
#import "NGSEventFlowResponse.h"
#import "NGSEventStateRequest.h"
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



@interface NGSEventFlowsApi: NSObject <NGSApi>

extern NSString* kNGSEventFlowsApiErrorDomain;
extern NSInteger kNGSEventFlowsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(NGSApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Returns the current state of an existing event flow for a given job.
/// 
///
/// @param applicationName The Application Name of the calling application
/// @param resourceType The resource type, such as job, loss, etc.
/// @param identifier The Identifier for the given resource.
/// @param xClientIdentifier Client Identifier (default to Set Client Identifier)
/// @param xAPIKey Client API Key (default to Set Key)
/// 
///  code:200 message:"The current state of an existing event flow.",
///  code:401 message:"",
///  code:404 message:""
///
/// @return NGSCurrentStateResponse*
-(NSURLSessionTask*) getCurrentStateWithApplicationName: (NSString*) applicationName
    resourceType: (NSString*) resourceType
    identifier: (NSString*) identifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NGSCurrentStateResponse* output, NSError* error)) handler;


/// Initiates an event flow. This endpoint should be used when appending an event flow to an existing project
/// 
///
/// @param applicationName The Application Name of the calling application
/// @param request Contains parameters to initiate the event flow, including owner, initiator, application job id, and recipient. The consumer can also specify a starting state for the event flow.
/// @param xClientIdentifier Client Identifier (default to Set Client Identifier)
/// @param xAPIKey Client API Key (default to Set Key)
/// 
///  code:200 message:"The newly created event flow.",
///  code:400 message:"",
///  code:401 message:"",
///  code:404 message:""
///
/// @return NGSEventFlowResponse*
-(NSURLSessionTask*) invokeWithApplicationName: (NSString*) applicationName
    request: (NGSEventStateRequest*) request
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NGSEventFlowResponse* output, NSError* error)) handler;



@end
