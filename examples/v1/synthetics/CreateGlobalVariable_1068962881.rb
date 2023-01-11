# Create a global variable from test returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

# there is a valid "synthetics_api_test_multi_step" in the system
SYNTHETICS_API_TEST_MULTI_STEP_PUBLIC_ID = ENV["SYNTHETICS_API_TEST_MULTI_STEP_PUBLIC_ID"]

body = DatadogAPIClient::V1::SyntheticsGlobalVariable.new({
  description: "",
  name: "GLOBAL_VARIABLE_PAYLOAD_EXAMPLECREATEAGLOBALVARIABLEFROMTESTRETURNSOKRESPONSE",
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
  parse_test_public_id: SYNTHETICS_API_TEST_MULTI_STEP_PUBLIC_ID,
  parse_test_options: DatadogAPIClient::V1::SyntheticsGlobalVariableParseTestOptions.new({
    type: DatadogAPIClient::V1::SyntheticsGlobalVariableParseTestOptionsType::LOCAL_VARIABLE,
    local_variable_name: "EXTRACTED_VALUE",
  }),
})
p api_instance.create_global_variable(body)
