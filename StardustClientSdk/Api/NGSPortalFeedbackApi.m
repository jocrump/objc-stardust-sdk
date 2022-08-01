#import "NGSPortalFeedbackApi.h"
#import "NGSQueryParamCollection.h"
#import "NGSApiClient.h"
#import "NGSCreateProjectFeedbackRequest.h"
#import "NGSProblemDetails.h"
#import "NGSProjectFeedbackResponse.h"


@interface NGSPortalFeedbackApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation NGSPortalFeedbackApi

NSString* kNGSPortalFeedbackApiErrorDomain = @"NGSPortalFeedbackApiErrorDomain";
NSInteger kNGSPortalFeedbackApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[NGSApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(NGSApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Creates a job feedback based on event flow and portal.
/// 
///  @param portalIdentifier  
///
///  @param jobFeedbackRequest  
///
///  @param xClientIdentifier Client Identifier 
///
///  @param xAPIKey Client API Key 
///
///  @returns NGSProjectFeedbackResponse*
///
-(NSURLSessionTask*) addPortalFeedbackWithPortalIdentifier: (NSString*) portalIdentifier
    jobFeedbackRequest: (NGSCreateProjectFeedbackRequest*) jobFeedbackRequest
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NGSProjectFeedbackResponse* output, NSError* error)) handler {
    // verify the required parameter 'portalIdentifier' is set
    if (portalIdentifier == nil) {
        NSParameterAssert(portalIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"portalIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSPortalFeedbackApiErrorDomain code:kNGSPortalFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'jobFeedbackRequest' is set
    if (jobFeedbackRequest == nil) {
        NSParameterAssert(jobFeedbackRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"jobFeedbackRequest"] };
            NSError* error = [NSError errorWithDomain:kNGSPortalFeedbackApiErrorDomain code:kNGSPortalFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xClientIdentifier' is set
    if (xClientIdentifier == nil) {
        NSParameterAssert(xClientIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xClientIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSPortalFeedbackApiErrorDomain code:kNGSPortalFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xAPIKey' is set
    if (xAPIKey == nil) {
        NSParameterAssert(xAPIKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xAPIKey"] };
            NSError* error = [NSError errorWithDomain:kNGSPortalFeedbackApiErrorDomain code:kNGSPortalFeedbackApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/stardust/v1/portals/{portalIdentifier}/feedback"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (portalIdentifier != nil) {
        pathParams[@"portalIdentifier"] = portalIdentifier;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xClientIdentifier != nil) {
        headerParams[@"X-Client-Identifier"] = xClientIdentifier;
    }
    if (xAPIKey != nil) {
        headerParams[@"X-API-Key"] = xAPIKey;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"text/plain", @"application/json", @"text/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"text/json", @"application/_*+json"]];

    // Authentication setting
    NSArray *authSettings = @[@"Bearer"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = jobFeedbackRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NGSProjectFeedbackResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NGSProjectFeedbackResponse*)data, error);
                                }
                            }];
}



@end
