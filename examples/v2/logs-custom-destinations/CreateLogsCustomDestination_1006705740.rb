# Create a Google Security Operations custom destination returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::LogsCustomDestinationsAPI.new

body = DatadogAPIClient::V2::CustomDestinationCreateRequest.new({
  data: DatadogAPIClient::V2::CustomDestinationCreateRequestDefinition.new({
    attributes: DatadogAPIClient::V2::CustomDestinationCreateRequestAttributes.new({
      enabled: false,
      forward_tags: false,
      forward_tags_restriction_list: [
        "datacenter",
        "host",
      ],
      forward_tags_restriction_list_type: DatadogAPIClient::V2::CustomDestinationAttributeTagsRestrictionListType::ALLOW_LIST,
      forwarder_destination: DatadogAPIClient::V2::CustomDestinationForwardDestinationGoogleSecurityOperations.new({
        type: DatadogAPIClient::V2::CustomDestinationForwardDestinationGoogleSecurityOperationsType::GOOGLE_SECURITY_OPERATIONS,
        customer_id: "123-456-7890",
        regional_endpoint: "https://malachiteingestion-pa.googleapis.com",
        namespace: "google-security-operations-namespace",
        auth: DatadogAPIClient::V2::CustomDestinationGoogleSecurityOperationsDestinationAuth.new({
          type: DatadogAPIClient::V2::CustomDestinationGoogleSecurityOperationsDestinationAuthType::GCP_PRIVATE_KEY,
          project_id: "gcp-project",
          private_key_id: "abc12345678",
          client_email: "client@example.com",
          client_id: "def123456",
          private_key: '-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBK...\n-----END PRIVATE KEY-----\n',
        }),
      }),
      name: "Nginx logs",
      query: "source:nginx",
    }),
    type: DatadogAPIClient::V2::CustomDestinationType::CUSTOM_DESTINATION,
  }),
})
p api_instance.create_logs_custom_destination(body)
