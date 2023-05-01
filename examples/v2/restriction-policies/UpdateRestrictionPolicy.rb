# Update a restriction policy returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::RestrictionPoliciesAPI.new

# there is a valid "user" in the system
USER_DATA_RELATIONSHIPS_ORG_DATA_ID = ENV["USER_DATA_RELATIONSHIPS_ORG_DATA_ID"]

body = DatadogAPIClient::V2::RestrictionPolicyUpdateRequest.new({
  data: DatadogAPIClient::V2::RestrictionPolicy.new({
    id: "dashboard:test-update",
    type: DatadogAPIClient::V2::RestrictionPolicyType::RESTRICTION_POLICY,
    attributes: DatadogAPIClient::V2::RestrictionPolicyAttributes.new({
      bindings: [
        DatadogAPIClient::V2::RestrictionPolicyBinding.new({
          relation: "editor",
          principals: [
            "org:00000000-0000-beef-0000-000000000000",
          ],
        }),
      ],
    }),
  }),
})
p api_instance.update_restriction_policy("dashboard:test-update", body)
