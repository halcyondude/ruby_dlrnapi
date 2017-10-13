# RubyDlrnapi::DefaultApi

All URIs are relative to *http://127.0.0.1:5000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**api_civotes_detail_html_get**](DefaultApi.md#api_civotes_detail_html_get) | **GET** /api/civotes_detail.html | 
[**api_civotes_html_get**](DefaultApi.md#api_civotes_html_get) | **GET** /api/civotes.html | 
[**api_last_tested_repo_get**](DefaultApi.md#api_last_tested_repo_get) | **GET** /api/last_tested_repo | 
[**api_last_tested_repo_post**](DefaultApi.md#api_last_tested_repo_post) | **POST** /api/last_tested_repo | 
[**api_promote_post**](DefaultApi.md#api_promote_post) | **POST** /api/promote | 
[**api_promotions_get**](DefaultApi.md#api_promotions_get) | **GET** /api/promotions | 
[**api_remote_import_post**](DefaultApi.md#api_remote_import_post) | **POST** /api/remote/import | 
[**api_repo_status_get**](DefaultApi.md#api_repo_status_get) | **GET** /api/repo_status | 
[**api_report_html_get**](DefaultApi.md#api_report_html_get) | **GET** /api/report.html | 
[**api_report_result_post**](DefaultApi.md#api_report_result_post) | **POST** /api/report_result | 


# **api_civotes_detail_html_get**
> api_civotes_detail_html_get(commit_hash, distro_hash, opts)



Get a detailed overview of the CI reports for a specific repo, with optional filtering. 

### Example
```ruby
# load the gem
require 'ruby_dlrnapi'

api_instance = RubyDlrnapi::DefaultApi.new

commit_hash = "commit_hash_example" # String | Filter on this commit hash.

distro_hash = "distro_hash_example" # String | Filter on this distro hash.

opts = { 
  success: true # BOOLEAN | If set filter for successful/failed CI votes
}

begin
  api_instance.api_civotes_detail_html_get(commit_hash, distro_hash, opts)
rescue RubyDlrnapi::ApiError => e
  puts "Exception when calling DefaultApi->api_civotes_detail_html_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **commit_hash** | **String**| Filter on this commit hash. | 
 **distro_hash** | **String**| Filter on this distro hash. | 
 **success** | **BOOLEAN**| If set filter for successful/failed CI votes | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html



# **api_civotes_html_get**
> api_civotes_html_get



Get an overview of the CI reports. 

### Example
```ruby
# load the gem
require 'ruby_dlrnapi'

api_instance = RubyDlrnapi::DefaultApi.new

begin
  api_instance.api_civotes_html_get
rescue RubyDlrnapi::ApiError => e
  puts "Exception when calling DefaultApi->api_civotes_html_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html



# **api_last_tested_repo_get**
> Repo api_last_tested_repo_get(params)



Get the last tested repo since a specific time.  If a ``job_id`` is specified, the order of precedence for the repo returned is: - The last tested repo within that timeframe for that CI job. - The last tested repo within that timeframe for any CI job, so we can have   several CIs converge on a single repo. - The last \"consistent\" repo, if no repo has been tested in the timeframe.  If ``sequential_mode`` is set to true, a different algorithm is used. Another parameter ``previous_job_id`` needs to be specified, and the order of precedence for the repo returned is:  - The last tested repo within that timeframe for the CI job described by ``previous_job_id``. - If no repo for ``previous_job_id`` is found, an error will be returned  The sequential mode is meant to be used by CI pipelines, where a CI (n) job needs to use the same repo tested by CI (n-1). 

### Example
```ruby
# load the gem
require 'ruby_dlrnapi'

api_instance = RubyDlrnapi::DefaultApi.new

params = RubyDlrnapi::Params.new # Params | The JSON params to post


begin
  result = api_instance.api_last_tested_repo_get(params)
  p result
rescue RubyDlrnapi::ApiError => e
  puts "Exception when calling DefaultApi->api_last_tested_repo_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**Params**](Params.md)| The JSON params to post | 

### Return type

[**Repo**](Repo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **api_last_tested_repo_post**
> Repo api_last_tested_repo_post(params)



Get the last tested repo since a specific time (optionally for a CI job), and add an \"in progress\" entry in the CI job table for this.  If a job_id is specified, the order of precedence for the repo returned is:  - The last tested repo within that timeframe for that CI job. - The last tested repo within that timeframe for any CI job, so we can have   several CIs converge on a single repo. - The last \"consistent\" repo, if no repo has been tested in the timeframe.  If ``sequential_mode`` is set to true, a different algorithm is used. Another parameter ``previous_job_id`` needs to be specified, and the order of precedence for the repo returned is:  - The last tested repo within that timeframe for the CI job described by   ``previous_job_id``. - If no repo for ``previous_job_id`` is found, an error will be returned  The sequential mode is meant to be used by CI pipelines, where a CI (n) job needs to use the same repo tested by CI (n-1). 

### Example
```ruby
# load the gem
require 'ruby_dlrnapi'
# setup authorization
RubyDlrnapi.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubyDlrnapi::DefaultApi.new

params = RubyDlrnapi::Params1.new # Params1 | The JSON params to post


begin
  result = api_instance.api_last_tested_repo_post(params)
  p result
rescue RubyDlrnapi::ApiError => e
  puts "Exception when calling DefaultApi->api_last_tested_repo_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**Params1**](Params1.md)| The JSON params to post | 

### Return type

[**Repo**](Repo.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **api_promote_post**
> Promotion api_promote_post(params)



Promote a repository. This can be implemented as a local symlink creation in the DLRN worker, or any other form in the future.  Note the API will refuse to promote using promote_name=\"consistent\" or \"current\", since those are reserved keywords for DLRN. 

### Example
```ruby
# load the gem
require 'ruby_dlrnapi'
# setup authorization
RubyDlrnapi.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubyDlrnapi::DefaultApi.new

params = RubyDlrnapi::Params4.new # Params4 | The JSON params to post


begin
  result = api_instance.api_promote_post(params)
  p result
rescue RubyDlrnapi::ApiError => e
  puts "Exception when calling DefaultApi->api_promote_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**Params4**](Params4.md)| The JSON params to post | 

### Return type

[**Promotion**](Promotion.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **api_promotions_get**
> Array&lt;Promotion&gt; api_promotions_get(params)



Get all the promotions, optionally for a specific repository or promotion name. The output will be sorted by the promotion timestamp, with the newest first, and limited to 100 results per query. 

### Example
```ruby
# load the gem
require 'ruby_dlrnapi'

api_instance = RubyDlrnapi::DefaultApi.new

params = RubyDlrnapi::Params5.new # Params5 | The JSON params to post


begin
  result = api_instance.api_promotions_get(params)
  p result
rescue RubyDlrnapi::ApiError => e
  puts "Exception when calling DefaultApi->api_promotions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**Params5**](Params5.md)| The JSON params to post | 

### Return type

[**Array&lt;Promotion&gt;**](Promotion.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **api_remote_import_post**
> Import api_remote_import_post(params)



Import a commit built by another instance. This API call mimics the behavior of the ``dlrn-remote`` command, with the only exception of not being able to specify a custom rdoinfo location. 

### Example
```ruby
# load the gem
require 'ruby_dlrnapi'
# setup authorization
RubyDlrnapi.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubyDlrnapi::DefaultApi.new

params = RubyDlrnapi::Import.new # Import | The JSON params to post


begin
  result = api_instance.api_remote_import_post(params)
  p result
rescue RubyDlrnapi::ApiError => e
  puts "Exception when calling DefaultApi->api_remote_import_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**Import**](Import.md)| The JSON params to post | 

### Return type

[**Import**](Import.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **api_repo_status_get**
> Array&lt;CIVote&gt; api_repo_status_get(params)



Get all the CI reports for a specific repository. 

### Example
```ruby
# load the gem
require 'ruby_dlrnapi'

api_instance = RubyDlrnapi::DefaultApi.new

params = RubyDlrnapi::Params2.new # Params2 | The JSON params to post


begin
  result = api_instance.api_repo_status_get(params)
  p result
rescue RubyDlrnapi::ApiError => e
  puts "Exception when calling DefaultApi->api_repo_status_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**Params2**](Params2.md)| The JSON params to post | 

### Return type

[**Array&lt;CIVote&gt;**](CIVote.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **api_report_html_get**
> api_report_html_get(opts)



Get a detailed report of the commit build status, with optional filtering. 

### Example
```ruby
# load the gem
require 'ruby_dlrnapi'

api_instance = RubyDlrnapi::DefaultApi.new

opts = { 
  package: "package_example", # String | Filter on this package name.
  success: true # BOOLEAN | Filter on this successful/unsuccessful builds.
}

begin
  api_instance.api_report_html_get(opts)
rescue RubyDlrnapi::ApiError => e
  puts "Exception when calling DefaultApi->api_report_html_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **package** | **String**| Filter on this package name. | [optional] 
 **success** | **BOOLEAN**| Filter on this successful/unsuccessful builds. | [optional] 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/html



# **api_report_result_post**
> CIVote api_report_result_post(params)



Report the result of a CI job. 

### Example
```ruby
# load the gem
require 'ruby_dlrnapi'
# setup authorization
RubyDlrnapi.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = RubyDlrnapi::DefaultApi.new

params = RubyDlrnapi::Params3.new # Params3 | The JSON params to post


begin
  result = api_instance.api_report_result_post(params)
  p result
rescue RubyDlrnapi::ApiError => e
  puts "Exception when calling DefaultApi->api_report_result_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **params** | [**Params3**](Params3.md)| The JSON params to post | 

### Return type

[**CIVote**](CIVote.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



