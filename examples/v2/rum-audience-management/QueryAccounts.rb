# Query accounts returns "Successful response with account data" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.query_accounts".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new

body = DatadogAPIClient::V2::QueryAccountRequest.new({
  data: DatadogAPIClient::V2::QueryAccountRequestData.new({
    attributes: DatadogAPIClient::V2::QueryAccountRequestDataAttributes.new({
      limit: 20,
      query: "plan_type:enterprise AND user_count:>100 AND subscription_status:active",
      select_columns: [
        "account_id",
        "account_name",
        "user_count",
        "plan_type",
        "subscription_status",
        "created_at",
        "mrr",
        "industry",
      ],
      sort: DatadogAPIClient::V2::QueryAccountRequestDataAttributesSort.new({
        field: "user_count",
        order: "DESC",
      }),
      wildcard_search_term: "tech",
    }),
    id: "query_account_request",
    type: DatadogAPIClient::V2::QueryAccountRequestDataType::QUERY_ACCOUNT_REQUEST,
  }),
})
p api_instance.query_accounts(body)
