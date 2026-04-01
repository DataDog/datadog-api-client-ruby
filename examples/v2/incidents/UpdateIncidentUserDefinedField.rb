# Update an incident user-defined field returns "OK" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_incident_user_defined_field".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentUserDefinedFieldUpdateRequest.new({
  data: DatadogAPIClient::V2::IncidentUserDefinedFieldUpdateData.new({
    attributes: DatadogAPIClient::V2::IncidentUserDefinedFieldAttributesUpdateRequest.new({
      category: DatadogAPIClient::V2::IncidentUserDefinedFieldCategory::WHAT_HAPPENED,
      collected: DatadogAPIClient::V2::IncidentUserDefinedFieldCollected::ACTIVE,
      default_value: "critical",
      display_name: "Root Cause",
      ordinal: "1.5",
      required: false,
      valid_values: [
        DatadogAPIClient::V2::IncidentUserDefinedFieldValidValue.new({
          description: "A critical severity incident.",
          display_name: "Critical",
          short_description: "Critical",
          value: "critical",
        }),
      ],
    }),
    id: "00000000-0000-0000-0000-000000000000",
    type: DatadogAPIClient::V2::IncidentUserDefinedFieldType::USER_DEFINED_FIELD,
  }),
})
p api_instance.update_incident_user_defined_field("00000000-0000-0000-0000-000000000000", body)
