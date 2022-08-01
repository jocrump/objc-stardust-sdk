# NGSInvitesApi

All URIs are relative to *https://sandboxdreadnought.ngsdevapps.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteParticipantInvite**](NGSInvitesApi.md#deleteparticipantinvite) | **DELETE** /api/stardust/v1/applications/{applicationName}/invites/participant | 
[**getInviteRecipientsByResourcePath**](NGSInvitesApi.md#getinviterecipientsbyresourcepath) | **GET** /api/stardust/v1/applications/{applicationName}/invites/resources/{appName}/{resourceType}/{identifier}/recipients | 
[**getInvitesByResourcePath**](NGSInvitesApi.md#getinvitesbyresourcepath) | **GET** /api/stardust/v1/applications/{applicationName}/invites/resources/{resourceType}/{identifier} | 
[**sendInvite**](NGSInvitesApi.md#sendinvite) | **POST** /api/stardust/v1/applications/{applicationName}/invites/send | Sends invites to customers. Links are generated programmatically.


# **deleteParticipantInvite**
```objc
-(NSURLSessionTask*) deleteParticipantInviteWithApplicationName: (NSString*) applicationName
    request: (NGSDeleteInviteRequest*) request
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NSArray<NGSInviteParticipantResponse>* output, NSError* error)) handler;
```



### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* applicationName = @"applicationName_example"; // 
NGSDeleteInviteRequest* request = [[NGSDeleteInviteRequest alloc] init]; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSInvitesApi*apiInstance = [[NGSInvitesApi alloc] init];

[apiInstance deleteParticipantInviteWithApplicationName:applicationName
              request:request
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NSArray<NGSInviteParticipantResponse>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSInvitesApi->deleteParticipantInvite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationName** | **NSString***|  | 
 **request** | [**NGSDeleteInviteRequest***](NGSDeleteInviteRequest.md)|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NSArray<NGSInviteParticipantResponse>***](NGSInviteParticipantResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInviteRecipientsByResourcePath**
```objc
-(NSURLSessionTask*) getInviteRecipientsByResourcePathWithAppName: (NSString*) appName
    resourceType: (NSString*) resourceType
    identifier: (NSString*) identifier
    applicationName: (NSString*) applicationName
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NSArray<NGSInviteParticipantResponse>* output, NSError* error)) handler;
```



### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* appName = @"appName_example"; // 
NSString* resourceType = @"resourceType_example"; // 
NSString* identifier = @"identifier_example"; // 
NSString* applicationName = @"applicationName_example"; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSInvitesApi*apiInstance = [[NGSInvitesApi alloc] init];

[apiInstance getInviteRecipientsByResourcePathWithAppName:appName
              resourceType:resourceType
              identifier:identifier
              applicationName:applicationName
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NSArray<NGSInviteParticipantResponse>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSInvitesApi->getInviteRecipientsByResourcePath: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appName** | **NSString***|  | 
 **resourceType** | **NSString***|  | 
 **identifier** | **NSString***|  | 
 **applicationName** | **NSString***|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NSArray<NGSInviteParticipantResponse>***](NGSInviteParticipantResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvitesByResourcePath**
```objc
-(NSURLSessionTask*) getInvitesByResourcePathWithApplicationName: (NSString*) applicationName
    resourceType: (NSString*) resourceType
    identifier: (NSString*) identifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NSArray<NGSInviteResponse>* output, NSError* error)) handler;
```



### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* applicationName = @"applicationName_example"; // 
NSString* resourceType = @"resourceType_example"; // 
NSString* identifier = @"identifier_example"; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSInvitesApi*apiInstance = [[NGSInvitesApi alloc] init];

[apiInstance getInvitesByResourcePathWithApplicationName:applicationName
              resourceType:resourceType
              identifier:identifier
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NSArray<NGSInviteResponse>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSInvitesApi->getInvitesByResourcePath: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationName** | **NSString***|  | 
 **resourceType** | **NSString***|  | 
 **identifier** | **NSString***|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NSArray<NGSInviteResponse>***](NGSInviteResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sendInvite**
```objc
-(NSURLSessionTask*) sendInviteWithApplicationName: (NSString*) applicationName
    request: (NGSCreateInviteRequest*) request
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NGSInviteResponse* output, NSError* error)) handler;
```

Sends invites to customers. Links are generated programmatically.

### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* applicationName = @"applicationName_example"; // The Application Name of the calling application
NGSCreateInviteRequest* request = [[NGSCreateInviteRequest alloc] init]; // Contains a list of invites to send
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSInvitesApi*apiInstance = [[NGSInvitesApi alloc] init];

// Sends invites to customers. Links are generated programmatically.
[apiInstance sendInviteWithApplicationName:applicationName
              request:request
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NGSInviteResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSInvitesApi->sendInvite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **applicationName** | **NSString***| The Application Name of the calling application | 
 **request** | [**NGSCreateInviteRequest***](NGSCreateInviteRequest.md)| Contains a list of invites to send | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NGSInviteResponse***](NGSInviteResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

