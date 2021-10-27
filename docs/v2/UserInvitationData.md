# DatadogAPIClient::V2::UserInvitationData

## Properties

| Name              | Type                                                              | Description | Notes                                   |
| ----------------- | ----------------------------------------------------------------- | ----------- | --------------------------------------- |
| **relationships** | [**UserInvitationRelationships**](UserInvitationRelationships.md) |             |                                         |
| **type**          | [**UserInvitationsType**](UserInvitationsType.md)                 |             | [default to &#39;user_invitations&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::UserInvitationData.new(
  relationships: null,
  type: null
)
```
