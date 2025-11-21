# Patch a global variable returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::SyntheticsAPI.new

body = DatadogAPIClient::V2::GlobalVariableJsonPatchRequest.new({
  data: DatadogAPIClient::V2::GlobalVariableJsonPatchRequestData.new({
    attributes: DatadogAPIClient::V2::GlobalVariableJsonPatchRequestDataAttributes.new({
      json_patch: [
        DatadogAPIClient::V2::JsonPatchOperation.new({
          op: DatadogAPIClient::V2::JsonPatchOperationOp::ADD,
          path: "/name",
        }),
      ],
    }),
    type: DatadogAPIClient::V2::GlobalVariableJsonPatchType::GLOBAL_VARIABLES_JSON_PATCH,
  }),
})
p api_instance.patch_global_variable("variable_id", body)
