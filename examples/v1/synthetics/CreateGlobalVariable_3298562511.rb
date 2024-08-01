# Create a FIDO global variable returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsGlobalVariableRequest.new({
  description: "",
  is_fido: true,
  name: "GLOBAL_VARIABLE_FIDO_PAYLOAD_EXAMPLESYNTHETIC",
  tags: [],
})
p api_instance.create_global_variable(body)
