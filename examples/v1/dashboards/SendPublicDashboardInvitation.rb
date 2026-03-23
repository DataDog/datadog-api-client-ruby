# Send shared dashboard invitation email returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::DashboardsAPI.new

body = DatadogAPIClient::V1::SharedDashboardInvites.new({
  data: [
    DatadogAPIClient::V1::SharedDashboardInvitesDataObject.new({
      attributes: DatadogAPIClient::V1::SharedDashboardInvitesDataObjectAttributes.new({
        email: "test@datadoghq.com",
      }),
      type: DatadogAPIClient::V1::DashboardInviteType::PUBLIC_DASHBOARD_INVITATION,
    }),
  ],
})
p api_instance.send_public_dashboard_invitation("token", body)
