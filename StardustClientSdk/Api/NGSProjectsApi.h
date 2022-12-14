#import <Foundation/Foundation.h>
#import "NGSCreateProjectGroupRequest.h"
#import "NGSCreateProjectRequest.h"
#import "NGSEditProjectRequest.h"
#import "NGSProblemDetails.h"
#import "NGSProject.h"
#import "NGSProjectGroup.h"
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



@interface NGSProjectsApi: NSObject <NGSApi>

extern NSString* kNGSProjectsApiErrorDomain;
extern NSInteger kNGSProjectsApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(NGSApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Creates a new project. If no Project Group Identifier is specified, a new Project Group will be created automatically. Status -- Completed
/// 
///
/// @param request Contains values to set a name for the project.
/// @param applicationName 
/// @param xClientIdentifier Client Identifier (default to Set Client Identifier)
/// @param xAPIKey Client API Key (default to Set Key)
/// 
///  code:201 message:"Returns the ProjectIdentifier for the new project.",
///  code:400 message:"",
///  code:401 message:"",
///  code:404 message:""
///
/// @return NSString*
-(NSURLSessionTask*) createProjectWithRequest: (NGSCreateProjectRequest*) request
    applicationName: (NSString*) applicationName
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Creates a new project group Status -- Completed
/// 
///
/// @param request Contains parameters related to creating a new project group.
/// @param applicationName 
/// @param xClientIdentifier Client Identifier (default to Set Client Identifier)
/// @param xAPIKey Client API Key (default to Set Key)
/// 
///  code:201 message:"The ProjectGroupIdentifier of the newly created project group.",
///  code:400 message:"",
///  code:401 message:""
///
/// @return NSString*
-(NSURLSessionTask*) createProjectGroupWithRequest: (NGSCreateProjectGroupRequest*) request
    applicationName: (NSString*) applicationName
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NSString* output, NSError* error)) handler;


/// Gets Project by Project Identifier Status -- Completed
/// 
///
/// @param projectIdentifier The Project Identifier of the desired project
/// @param applicationName 
/// @param xClientIdentifier Client Identifier (default to Set Client Identifier)
/// @param xAPIKey Client API Key (default to Set Key)
/// 
///  code:200 message:"The Project.",
///  code:400 message:"",
///  code:401 message:""
///
/// @return NGSProject*
-(NSURLSessionTask*) getProjectByIdentifierWithProjectIdentifier: (NSString*) projectIdentifier
    applicationName: (NSString*) applicationName
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NGSProject* output, NSError* error)) handler;


/// Gets Project Group by Project Group Identifier Status -- Completed
/// 
///
/// @param projectGroupIdentifier The Project Group Identifier of the desired group
/// @param applicationName 
/// @param xClientIdentifier Client Identifier (default to Set Client Identifier)
/// @param xAPIKey Client API Key (default to Set Key)
/// 
///  code:200 message:"The Project Group.",
///  code:400 message:"",
///  code:401 message:""
///
/// @return NGSProjectGroup*
-(NSURLSessionTask*) getProjectGroupByIdentifierWithProjectGroupIdentifier: (NSString*) projectGroupIdentifier
    applicationName: (NSString*) applicationName
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NGSProjectGroup* output, NSError* error)) handler;


/// Gets Project by Job Identifier and System Status -- Completed
/// 
///
/// @param applicationName The System name and System Id of the calling application. For example: dash-svm, proassist, MICA-UAT
/// @param jobIdentifier The Identifier of the job.
/// @param xClientIdentifier Client Identifier (default to Set Client Identifier)
/// @param xAPIKey Client API Key (default to Set Key)
/// 
///  code:200 message:"The Project.",
///  code:400 message:"",
///  code:401 message:""
///
/// @return NSArray<NGSProject>*
-(NSURLSessionTask*) getProjectsByJobWithApplicationName: (NSString*) applicationName
    jobIdentifier: (NSString*) jobIdentifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NSArray<NGSProject>* output, NSError* error)) handler;


/// Gets Project by resource path Status -- Completed
/// 
///
/// @param applicationName The System name and System Id of the calling application. For example: dash-svm, proassist, MICA-UAT
/// @param resourceType The type of resource.
/// @param identifier The Identifier of the resource.
/// @param xClientIdentifier Client Identifier (default to Set Client Identifier)
/// @param xAPIKey Client API Key (default to Set Key)
/// 
///  code:200 message:"The Project.",
///  code:201 message:"The Project.",
///  code:400 message:"",
///  code:401 message:"",
///  code:404 message:""
///
/// @return NSArray<NGSProject>*
-(NSURLSessionTask*) getProjectsByResourcePathWithApplicationName: (NSString*) applicationName
    resourceType: (NSString*) resourceType
    identifier: (NSString*) identifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NSArray<NGSProject>* output, NSError* error)) handler;


/// Edits an existing project. Status -- Completed
/// 
///
/// @param request Contains values to update an existing project.
/// @param applicationName 
/// @param xClientIdentifier Client Identifier (default to Set Client Identifier)
/// @param xAPIKey Client API Key (default to Set Key)
/// 
///  code:200 message:"Returns 200",
///  code:400 message:"",
///  code:401 message:"",
///  code:404 message:""
///
/// @return void
-(NSURLSessionTask*) updateProjectWithRequest: (NGSEditProjectRequest*) request
    applicationName: (NSString*) applicationName
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NSError* error)) handler;



@end
