# DatadogAPIClient::V2::UserInvitationResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**UserInvitationDataAttributes**](UserInvitationDataAttributes.md) |  | [optional] |
| **id** | **String** | ID of the user invitation. | [optional] |
| **type** | [**UserInvitationsType**](UserInvitationsType.md) |  | [optional][default to &#39;user_invitations&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::UserInvitationResponseData.new(
  attributes: null,
  id: null,
  type: null
)
```

