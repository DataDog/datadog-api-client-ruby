# Revoke shared dashboard invitations returns "OK" response

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
api_instance.delete_public_dashboard_invitation("token", body)
