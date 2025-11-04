# Query event filtered users returns "Successful response with filtered user data" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.query_event_filtered_users".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RumAudienceManagementAPI.new

body = DatadogAPIClient::V2::QueryEventFilteredUsersRequest.new({
  data: DatadogAPIClient::V2::QueryEventFilteredUsersRequestData.new({
    attributes: DatadogAPIClient::V2::QueryEventFilteredUsersRequestDataAttributes.new({
      event_query: DatadogAPIClient::V2::QueryEventFilteredUsersRequestDataAttributesEventQuery.new({
        query: "@type:view AND @view.loading_time:>3000 AND @application.name:ecommerce-platform",
        time_frame: DatadogAPIClient::V2::QueryEventFilteredUsersRequestDataAttributesEventQueryTimeFrame.new({
          _end: 1761309676,
          start: 1760100076,
        }),
      }),
      include_row_count: true,
      limit: 25,
      query: "user_org_id:5001 AND first_country_code:US AND first_browser_name:Chrome",
      select_columns: [
        "user_id",
        "user_email",
        "first_country_code",
        "first_browser_name",
        "events_count",
        "session_count",
        "error_count",
        "avg_loading_time",
      ],
    }),
    id: "query_event_filtered_users_request",
    type: DatadogAPIClient::V2::QueryEventFilteredUsersRequestDataType::QUERY_EVENT_FILTERED_USERS_REQUEST,
  }),
})
p api_instance.query_event_filtered_users(body)
