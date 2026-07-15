# Update account filters returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CloudCostManagementAPI.new

body = DatadogAPIClient::V2::AccountFiltersPatchRequest.new({
  data: DatadogAPIClient::V2::AccountFiltersPatchData.new({
    attributes: DatadogAPIClient::V2::AccountFiltersPatchRequestAttributes.new({
      account_filters: DatadogAPIClient::V2::AccountFilteringConfig.new({
        excluded_accounts: [
          "123456789123",
          "123456789143",
        ],
        include_new_accounts: true,
        included_accounts: [
          "123456789123",
          "123456789143",
        ],
      }),
    }),
    type: DatadogAPIClient::V2::AccountFiltersPatchRequestType::ACCOUNT_FILTERS_PATCH_REQUEST,
  }),
})
p api_instance.update_cost_account_filters(9223372036854775807, body)
