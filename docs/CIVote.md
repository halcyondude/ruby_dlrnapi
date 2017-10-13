# RubyDlrnapi::CIVote

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**job_id** | **String** | name of the CI sending the vote | [optional] 
**commit_hash** | **String** | commit_hash of tested repo | [optional] 
**distro_hash** | **String** | distro_hash of tested repo | [optional] 
**url** | **String** | URL where to find additional information from the CI execution | [optional] 
**timestamp** | **Integer** | Timestamp (in seconds since the epoch) | [optional] 
**in_progress** | **BOOLEAN** | is this CI job still in-progress? | [optional] 
**success** | **BOOLEAN** | Was the CI execution successful? | [optional] 
**notes** | **String** | additional notes | [optional] 


