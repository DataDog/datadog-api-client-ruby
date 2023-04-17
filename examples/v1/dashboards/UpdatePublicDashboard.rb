# Update a shared dashboard returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

# there is a valid "shared_dashboard" in the system
SHARED_DASHBOARD_TOKEN = ENV["SHARED_DASHBOARD_TOKEN"]

body = DatadogAPIClient::V1::SharedDashboardUpdateRequest.new({
  global_time: DatadogAPIClient::V1::SharedDashboardUpdateRequestGlobalTime.new({
    live_span: DatadogAPIClient::V1::DashboardGlobalTimeLiveSpan::PAST_FIFTEEN_MINUTES,
  }),
  share_list: [],
  share_type: DatadogAPIClient::V1::DashboardShareType::OPEN,
})
p api_instance.update_public_dashboard(SHARED_DASHBOARD_TOKEN, body)
