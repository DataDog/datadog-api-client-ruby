# DatadogAPIClient::V2::UserInvitationDataAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created_at** | **Time** | Creation time of the user invitation. | [optional] 
**expires_at** | **Time** | Time of invitation expiration. | [optional] 
**invite_type** | **String** | Type of invitation. | [optional] 
**uuid** | **String** | UUID of the user invitation. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::UserInvitationDataAttributes.new(created_at: null,
                                 expires_at: null,
                                 invite_type: null,
                                 uuid: null)
```


