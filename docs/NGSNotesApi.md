# NGSNotesApi

All URIs are relative to *https://sandboxdreadnought.ngsdevapps.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createNote**](NGSNotesApi.md#createnote) | **POST** /api/stardust/v1/portals/{portalIdentifier}/notes | 
[**getNotesForPortal**](NGSNotesApi.md#getnotesforportal) | **GET** /api/stardust/v1/portals/{portalIdentifier}/notes | 


# **createNote**
```objc
-(NSURLSessionTask*) createNoteWithPortalIdentifier: (NSString*) portalIdentifier
    request: (NGSCreateNoteRequest*) request
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NGSCreateNoteResponse* output, NSError* error)) handler;
```



### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* portalIdentifier = @"portalIdentifier_example"; // 
NGSCreateNoteRequest* request = [[NGSCreateNoteRequest alloc] init]; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSNotesApi*apiInstance = [[NGSNotesApi alloc] init];

[apiInstance createNoteWithPortalIdentifier:portalIdentifier
              request:request
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NGSCreateNoteResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSNotesApi->createNote: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalIdentifier** | **NSString***|  | 
 **request** | [**NGSCreateNoteRequest***](NGSCreateNoteRequest.md)|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

[**NGSCreateNoteResponse***](NGSCreateNoteResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNotesForPortal**
```objc
-(NSURLSessionTask*) getNotesForPortalWithPortalIdentifier: (NSString*) portalIdentifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    after: (NSString*) after
    limit: (NSNumber*) limit
        completionHandler: (void (^)(NSArray<NGSNoteInfo>* output, NSError* error)) handler;
```



### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* portalIdentifier = @"portalIdentifier_example"; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)
NSString* after = @"after_example"; //  (optional)
NSNumber* limit = @10; //  (optional) (default to 10)

NGSNotesApi*apiInstance = [[NGSNotesApi alloc] init];

[apiInstance getNotesForPortalWithPortalIdentifier:portalIdentifier
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
              after:after
              limit:limit
          completionHandler: ^(NSArray<NGSNoteInfo>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSNotesApi->getNotesForPortal: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalIdentifier** | **NSString***|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]
 **after** | **NSString***|  | [optional] 
 **limit** | **NSNumber***|  | [optional] [default to 10]

### Return type

[**NSArray<NGSNoteInfo>***](NGSNoteInfo.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

