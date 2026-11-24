# Create a recovery request returns "Accepted" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RUMRecoveryAPI.new

body = DatadogAPIClient::V2::RUMRecoveryCreateRequest.new({
  data: DatadogAPIClient::V2::RUMRecoveryCreateData.new({
    attributes: DatadogAPIClient::V2::RUMRecoverySessionsCreateAttributes.new({
      request_type: DatadogAPIClient::V2::RUMRecoverySessionsRequestType::SESSIONS,
      sessions: [
        DatadogAPIClient::V2::RUMRecoverySessionInput.new({
          application_id: "a33671aa-24fd-4dcd-ba4b-5bbdbafe7690",
          session_id: "00000000-0000-4000-8000-000000000001",
        }),
      ],
    }),
    type: "rum_recovery_request",
  }),
})
p api_instance.create_rum_recovery_request(body)
