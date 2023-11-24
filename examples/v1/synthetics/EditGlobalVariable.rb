# Edit a global variable returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

# there is a valid "synthetics_global_variable" in the system
SYNTHETICS_GLOBAL_VARIABLE_ID = ENV["SYNTHETICS_GLOBAL_VARIABLE_ID"]

# there is a valid "synthetics_api_test_multi_step" in the system
SYNTHETICS_API_TEST_MULTI_STEP_PUBLIC_ID = ENV["SYNTHETICS_API_TEST_MULTI_STEP_PUBLIC_ID"]

body = DatadogAPIClient::V1::SyntheticsGlobalVariable.new({
  description: "Updated description.",
  name: "GLOBAL_VARIABLE_PAYLOAD_EXAMPLESYNTHETIC",
  parse_test_options: DatadogAPIClient::V1::SyntheticsGlobalVariableParseTestOptions.new({
    type: DatadogAPIClient::V1::SyntheticsGlobalVariableParseTestOptionsType::LOCAL_VARIABLE,
    local_variable_name: "EXTRACTED_VALUE",
  }),
  parse_test_public_id: SYNTHETICS_API_TEST_MULTI_STEP_PUBLIC_ID,
  value: DatadogAPIClient::V1::SyntheticsGlobalVariableValue.new({
    secure: false,
    value: "",
  }),
  tags: [
    "test:mytag",
  ],
})
p api_instance.edit_global_variable(SYNTHETICS_GLOBAL_VARIABLE_ID, body)
