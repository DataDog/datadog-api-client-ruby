# Query users returns "Successful response with user data" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.query_users".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new

body = DatadogAPIClient::V2::QueryUsersRequest.new({
  data: DatadogAPIClient::V2::QueryUsersRequestData.new({
    attributes: DatadogAPIClient::V2::QueryUsersRequestDataAttributes.new({
      limit: 25,
      query: "user_email:*@techcorp.com AND first_country_code:US AND first_browser_name:Chrome",
      select_columns: [
        "user_id",
        "user_email",
        "user_name",
        "user_org_id",
        "first_country_code",
        "first_browser_name",
        "first_device_type",
        "last_seen",
      ],
      sort: DatadogAPIClient::V2::QueryUsersRequestDataAttributesSort.new({
        field: "first_seen",
        order: "DESC",
      }),
      wildcard_search_term: "john",
    }),
    id: "query_users_request",
    type: DatadogAPIClient::V2::QueryUsersRequestDataType::QUERY_USERS_REQUEST,
  }),
})
p api_instance.query_users(body)
