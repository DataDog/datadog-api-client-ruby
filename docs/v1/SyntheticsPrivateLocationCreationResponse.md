# DatadogAPIClient::V1::SyntheticsPrivateLocationCreationResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**config** | **Object** | Configuration skeleton for the private location. See installation instructions of the private location on how to use this configuration. | [optional] 
**private_location** | [**SyntheticsPrivateLocation**](SyntheticsPrivateLocation.md) |  | [optional] 
**result_encryption** | [**SyntheticsPrivateLocationCreationResponseResultEncryption**](SyntheticsPrivateLocationCreationResponseResultEncryption.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SyntheticsPrivateLocationCreationResponse.new(config: null,
                                 private_location: null,
                                 result_encryption: null)
```


