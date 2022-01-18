# DatadogAPIClient::V2::SecurityMonitoringRuleThirdPartyOptions

## Properties

| Name                      | Type                                                                    | Description                                                                                      | Notes      |
| ------------------------- | ----------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------ | ---------- |
| **default_notifications** | **Array&lt;String&gt;**                                                 | Notification targets for the root query.                                                         | [optional] |
| **default_status**        | [**SecurityMonitoringRuleSeverity**](SecurityMonitoringRuleSeverity.md) |                                                                                                  | [optional] |
| **first_seen_override**   | **String**                                                              | (Optional): the name of an attribute to override the first seen value of the third party signal. | [optional] |
| **last_seen_override**    | **String**                                                              | (Optional): the name of an attribute to override the last seen value of the third party signal.  | [optional] |
| **root_query**            | **String**                                                              | Root query of the rule.                                                                          | [optional] |
| **signal_id**             | **String**                                                              | Optional mapping of the third-party signal ID.                                                   | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringRuleThirdPartyOptions.new(
  default_notifications: null,
  default_status: null,
  first_seen_override: null,
  last_seen_override: null,
  root_query: null,
  signal_id: null
)
```
