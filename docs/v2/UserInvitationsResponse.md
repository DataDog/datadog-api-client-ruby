# DatadogAPIClient::V2::UserInvitationsResponse

## Properties

| Name     | Type                                                                         | Description                | Notes      |
| -------- | ---------------------------------------------------------------------------- | -------------------------- | ---------- |
| **data** | [**Array&lt;UserInvitationResponseData&gt;**](UserInvitationResponseData.md) | Array of user invitations. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::UserInvitationsResponse.new(
  data: null
)
```
