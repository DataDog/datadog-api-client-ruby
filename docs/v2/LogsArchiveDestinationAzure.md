# DatadogAPIClient::V2::LogsArchiveDestinationAzure

## Properties

| Name                | Type                                                                      | Description                                     | Notes                        |
| ------------------- | ------------------------------------------------------------------------- | ----------------------------------------------- | ---------------------------- |
| **container**       | **String**                                                                | The container where the archive will be stored. |                              |
| **integration**     | [**LogsArchiveIntegrationAzure**](LogsArchiveIntegrationAzure.md)         |                                                 |                              |
| **path**            | **String**                                                                | The archive path.                               | [optional]                   |
| **region**          | **String**                                                                | The region where the archive will be stored.    | [optional]                   |
| **storage_account** | **String**                                                                | The associated storage account.                 |                              |
| **type**            | [**LogsArchiveDestinationAzureType**](LogsArchiveDestinationAzureType.md) |                                                 | [default to &#39;azure&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsArchiveDestinationAzure.new(
  container: container-name,
  integration: null,
  path: null,
  region: null,
  storage_account: account-name,
  type: null
)
```
