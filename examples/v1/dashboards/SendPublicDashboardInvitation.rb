# Send shared dashboard invitation email returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

# there is a valid "shared_dashboard" in the system
SHARED_DASHBOARD_TOKEN = ENV["SHARED_DASHBOARD_TOKEN"]

body = DatadogAPIClient::V1::SharedDashboardInvites.new({
  data: DatadogAPIClient::V1::SharedDashboardInvitesDataObject.new({
    attributes: DatadogAPIClient::V1::SharedDashboardInvitesDataObjectAttributes.new({
      email: "exampledashboard@datadoghq.com",
    }),
    type: DatadogAPIClient::V1::DashboardInviteType::PUBLIC_DASHBOARD_INVITATION,
  }),
})
p api_instance.send_public_dashboard_invitation(SHARED_DASHBOARD_TOKEN, body)
