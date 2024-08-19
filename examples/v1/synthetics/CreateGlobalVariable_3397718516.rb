# Create a TOTP global variable returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsGlobalVariableRequest.new({
  description: "",
  is_totp: true,
  name: "GLOBAL_VARIABLE_TOTP_PAYLOAD_EXAMPLESYNTHETIC",
  tags: [],
  value: DatadogAPIClient::V1::SyntheticsGlobalVariableValue.new({
    secure: false,
    value: "",
    options: DatadogAPIClient::V1::SyntheticsGlobalVariableOptions.new({
      totp_parameters: DatadogAPIClient::V1::SyntheticsGlobalVariableTOTPParameters.new({
        digits: 6,
        refresh_interval: 30,
      }),
    }),
  }),
})
p api_instance.create_global_variable(body)
