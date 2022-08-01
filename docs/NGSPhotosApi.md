# NGSPhotosApi

All URIs are relative to *https://sandboxdreadnought.ngsdevapps.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPhotosForAlbum**](NGSPhotosApi.md#getphotosforalbum) | **GET** /api/stardust/v1/portals/{portalIdentifier}/photos/album/{albumIdentifier} | 
[**getPhotosForPortal**](NGSPhotosApi.md#getphotosforportal) | **GET** /api/stardust/v1/portals/{portalIdentifier}/photos | 
[**getPreSignedUrls**](NGSPhotosApi.md#getpresignedurls) | **POST** /api/stardust/v1/portals/{portalIdentifier}/photos/presigned | 


# **getPhotosForAlbum**
```objc
-(NSURLSessionTask*) getPhotosForAlbumWithPortalIdentifier: (NSString*) portalIdentifier
    albumIdentifier: (NSString*) albumIdentifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```



### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* portalIdentifier = @"portalIdentifier_example"; // 
NSString* albumIdentifier = @"albumIdentifier_example"; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)

NGSPhotosApi*apiInstance = [[NGSPhotosApi alloc] init];

[apiInstance getPhotosForAlbumWithPortalIdentifier:portalIdentifier
              albumIdentifier:albumIdentifier
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSPhotosApi->getPhotosForAlbum: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalIdentifier** | **NSString***|  | 
 **albumIdentifier** | **NSString***|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]

### Return type

**NSURL***

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPhotosForPortal**
```objc
-(NSURLSessionTask*) getPhotosForPortalWithPortalIdentifier: (NSString*) portalIdentifier
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    projectIdentifier: (NSString*) projectIdentifier
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
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
NSString* projectIdentifier = @"projectIdentifier_example"; //  (optional)

NGSPhotosApi*apiInstance = [[NGSPhotosApi alloc] init];

[apiInstance getPhotosForPortalWithPortalIdentifier:portalIdentifier
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
              projectIdentifier:projectIdentifier
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSPhotosApi->getPhotosForPortal: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalIdentifier** | **NSString***|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]
 **projectIdentifier** | **NSString***|  | [optional] 

### Return type

**NSURL***

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPreSignedUrls**
```objc
-(NSURLSessionTask*) getPreSignedUrlsWithPortalIdentifier: (NSString*) portalIdentifier
    request: (NGSCreatePreSignedUrlsRequest*) request
    xClientIdentifier: (NSString*) xClientIdentifier
    xAPIKey: (NSString*) xAPIKey
    projectIdentifier: (NSString*) projectIdentifier
        completionHandler: (void (^)(NSURL* output, NSError* error)) handler;
```



### Example 
```objc
NGSDefaultConfiguration *apiConfig = [NGSDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Bearer)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Authorization"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Authorization"];


NSString* portalIdentifier = @"portalIdentifier_example"; // 
NGSCreatePreSignedUrlsRequest* request = [[NGSCreatePreSignedUrlsRequest alloc] init]; // 
NSString* xClientIdentifier = @"Set Client Identifier"; // Client Identifier (default to Set Client Identifier)
NSString* xAPIKey = @"Set Key"; // Client API Key (default to Set Key)
NSString* projectIdentifier = @"projectIdentifier_example"; //  (optional)

NGSPhotosApi*apiInstance = [[NGSPhotosApi alloc] init];

[apiInstance getPreSignedUrlsWithPortalIdentifier:portalIdentifier
              request:request
              xClientIdentifier:xClientIdentifier
              xAPIKey:xAPIKey
              projectIdentifier:projectIdentifier
          completionHandler: ^(NSURL* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling NGSPhotosApi->getPreSignedUrls: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **portalIdentifier** | **NSString***|  | 
 **request** | [**NGSCreatePreSignedUrlsRequest***](NGSCreatePreSignedUrlsRequest.md)|  | 
 **xClientIdentifier** | **NSString***| Client Identifier | [default to Set Client Identifier]
 **xAPIKey** | **NSString***| Client API Key | [default to Set Key]
 **projectIdentifier** | **NSString***|  | [optional] 

### Return type

**NSURL***

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

