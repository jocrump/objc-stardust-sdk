#import "NGSPhotosApi.h"
#import "NGSQueryParamCollection.h"
#import "NGSApiClient.h"
#import "NGSCreatePreSignedUrlsRequest.h"


@interface NGSPhotosApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation NGSPhotosApi

NSString* kNGSPhotosApiErrorDomain = @"NGSPhotosApiErrorDomain";
NSInteger kNGSPhotosApiMissingParamErrorCode = 234513;

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
/// 
/// 
///  @param portalIdentifier  
///
///  @param albumIdentifier  
///
///  @param xClientIdentifier Client Identifier 
///
///  @param xAPIKey Client API Key 
///
///  @returns NSURL*
///
-(NSURLSessionTask*) getPhotosForAlbumWithPortalIdentifier: (NSString*) portalIdentifier
    albumIdentifier: (NSString*) albumIdentifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter 'portalIdentifier' is set
    if (portalIdentifier == nil) {
        NSParameterAssert(portalIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"portalIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSPhotosApiErrorDomain code:kNGSPhotosApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'albumIdentifier' is set
    if (albumIdentifier == nil) {
        NSParameterAssert(albumIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"albumIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSPhotosApiErrorDomain code:kNGSPhotosApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xClientIdentifier' is set
    if (xClientIdentifier == nil) {
        NSParameterAssert(xClientIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xClientIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSPhotosApiErrorDomain code:kNGSPhotosApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xAPIKey' is set
    if (xAPIKey == nil) {
        NSParameterAssert(xAPIKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xAPIKey"] };
            NSError* error = [NSError errorWithDomain:kNGSPhotosApiErrorDomain code:kNGSPhotosApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/stardust/v1/portals/{portalIdentifier}/photos/album/{albumIdentifier}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (portalIdentifier != nil) {
        pathParams[@"portalIdentifier"] = portalIdentifier;
    }
    if (albumIdentifier != nil) {
        pathParams[@"albumIdentifier"] = albumIdentifier;
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
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"Bearer"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSURL*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSURL*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param portalIdentifier  
///
///  @param xClientIdentifier Client Identifier 
///
///  @param xAPIKey Client API Key 
///
///  @param projectIdentifier  (optional)
///
///  @returns NSURL*
///
-(NSURLSessionTask*) getPhotosForPortalWithPortalIdentifier: (NSString*) portalIdentifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    projectIdentifier: (NSString*) projectIdentifier
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter 'portalIdentifier' is set
    if (portalIdentifier == nil) {
        NSParameterAssert(portalIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"portalIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSPhotosApiErrorDomain code:kNGSPhotosApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xClientIdentifier' is set
    if (xClientIdentifier == nil) {
        NSParameterAssert(xClientIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xClientIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSPhotosApiErrorDomain code:kNGSPhotosApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xAPIKey' is set
    if (xAPIKey == nil) {
        NSParameterAssert(xAPIKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xAPIKey"] };
            NSError* error = [NSError errorWithDomain:kNGSPhotosApiErrorDomain code:kNGSPhotosApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/stardust/v1/portals/{portalIdentifier}/photos"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (portalIdentifier != nil) {
        pathParams[@"portalIdentifier"] = portalIdentifier;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (projectIdentifier != nil) {
        queryParams[@"projectIdentifier"] = projectIdentifier;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xClientIdentifier != nil) {
        headerParams[@"X-Client-Identifier"] = xClientIdentifier;
    }
    if (xAPIKey != nil) {
        headerParams[@"X-API-Key"] = xAPIKey;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"Bearer"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSURL*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSURL*)data, error);
                                }
                            }];
}

///
/// 
/// 
///  @param portalIdentifier  
///
///  @param request  
///
///  @param xClientIdentifier Client Identifier 
///
///  @param xAPIKey Client API Key 
///
///  @param projectIdentifier  (optional)
///
///  @returns NSURL*
///
-(NSURLSessionTask*) getPreSignedUrlsWithPortalIdentifier: (NSString*) portalIdentifier
    request: (NGSCreatePreSignedUrlsRequest*) request
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    projectIdentifier: (NSString*) projectIdentifier
    completionHandler: (void (^)(NSURL* output, NSError* error)) handler {
    // verify the required parameter 'portalIdentifier' is set
    if (portalIdentifier == nil) {
        NSParameterAssert(portalIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"portalIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSPhotosApiErrorDomain code:kNGSPhotosApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'request' is set
    if (request == nil) {
        NSParameterAssert(request);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"request"] };
            NSError* error = [NSError errorWithDomain:kNGSPhotosApiErrorDomain code:kNGSPhotosApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xClientIdentifier' is set
    if (xClientIdentifier == nil) {
        NSParameterAssert(xClientIdentifier);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xClientIdentifier"] };
            NSError* error = [NSError errorWithDomain:kNGSPhotosApiErrorDomain code:kNGSPhotosApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'xAPIKey' is set
    if (xAPIKey == nil) {
        NSParameterAssert(xAPIKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"xAPIKey"] };
            NSError* error = [NSError errorWithDomain:kNGSPhotosApiErrorDomain code:kNGSPhotosApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/api/stardust/v1/portals/{portalIdentifier}/photos/presigned"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (portalIdentifier != nil) {
        pathParams[@"portalIdentifier"] = portalIdentifier;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (projectIdentifier != nil) {
        queryParams[@"projectIdentifier"] = projectIdentifier;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (xClientIdentifier != nil) {
        headerParams[@"X-Client-Identifier"] = xClientIdentifier;
    }
    if (xAPIKey != nil) {
        headerParams[@"X-API-Key"] = xAPIKey;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[]];
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
    bodyParam = request;

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
                              responseType: @"NSURL*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSURL*)data, error);
                                }
                            }];
}



@end
