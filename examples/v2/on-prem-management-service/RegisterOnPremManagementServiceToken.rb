# Register a token returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.register_on_prem_management_service_token".to_sym] = true
end
api_instance = DatadogAPIClient::V2::OnPremManagementServiceAPI.new

body = DatadogAPIClient::V2::OnPremManagementServiceRegisterTokenRequest.new({
  data: DatadogAPIClient::V2::OnPremManagementServiceRegisterTokenDataRequest.new({
    attributes: DatadogAPIClient::V2::OnPremManagementServiceRegisterTokenAttributes.new({
      app_id: "9a93d314-ca37-461d-b18e-0587f03c6e2a",
      app_version: 5,
      connection_id: "2f66ec56-d1f3-4a18-908d-5e8c12dfb3b0",
      query_id: "8744d459-18aa-405b-821e-df9bb101c01e",
      runner_id: "runner-GBUyh2Tm6oKS6ap4kt8Bbx",
    }),
    type: DatadogAPIClient::V2::OnPremManagementServiceRegisterTokenType::REGISTERTOKENREQUEST,
  }),
})
p api_instance.register_on_prem_management_service_token(body)
