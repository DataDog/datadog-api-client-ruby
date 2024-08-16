# Create a global variable returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsGlobalVariableRequest.new({
  attributes: DatadogAPIClient::V1::SyntheticsGlobalVariableAttributes.new({
    restricted_roles: [
      "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx",
    ],
  }),
  description: "Example description",
  name: "MY_VARIABLE",
  parse_test_options: DatadogAPIClient::V1::SyntheticsGlobalVariableParseTestOptions.new({
    field: "content-type",
    local_variable_name: "LOCAL_VARIABLE",
    parser: DatadogAPIClient::V1::SyntheticsVariableParser.new({
      type: DatadogAPIClient::V1::SyntheticsGlobalVariableParserType::REGEX,
      value: ".*",
    }),
    type: DatadogAPIClient::V1::SyntheticsGlobalVariableParseTestOptionsType::HTTP_BODY,
  }),
  parse_test_public_id: "abc-def-123",
  tags: [
    "team:front",
    "test:workflow-1",
  ],
  value: DatadogAPIClient::V1::SyntheticsGlobalVariableValue.new({
    secure: true,
    value: "value",
  }),
})
p api_instance.create_global_variable(body)
