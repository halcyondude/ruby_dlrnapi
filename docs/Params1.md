# RubyDlrnapi::Params1

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**max_age** | **Integer** | Maximum age (in hours) for the repo to be considered. Any repo tested or being tested after \&quot;now - max_age\&quot; will be taken into account. If set to 0, all repos will be considered.  | 
**reporting_job_id** | **String** | Name of the CI that will add the \&quot;in progress\&quot; entry in the CI job table.  | 
**success** | **BOOLEAN** | If set to a value, find repos with a successful/unsuccessful vote (as specified). If not set, any tested repo will be considered.  | [optional] 
**job_id** | **String** | Name of the CI that sent the vote. If not set, no filter will be set on CI.  | [optional] 
**sequential_mode** | **BOOLEAN** | Use the sequential mode algorithm. In this case, return the last tested repo within that timeframe for the CI job described by previous_job_id. Defaults to false.  | [optional] 
**previous_job_id** | **String** | If sequential_mode is set to true, look for jobs tested by the CI identified by previous_job_id.  | [optional] 


