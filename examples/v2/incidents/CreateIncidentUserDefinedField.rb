# Create an incident user-defined field returns "CREATED" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.create_incident_user_defined_field".to_sym] = true
end
api_instance = DatadogAPIClient::V2::IncidentsAPI.new

body = DatadogAPIClient::V2::IncidentUserDefinedFieldCreateRequest.new({
  data: DatadogAPIClient::V2::IncidentUserDefinedFieldCreateData.new({
    attributes: DatadogAPIClient::V2::IncidentUserDefinedFieldAttributesCreateRequest.new({
      category: DatadogAPIClient::V2::IncidentUserDefinedFieldCategory::WHAT_HAPPENED,
      collected: DatadogAPIClient::V2::IncidentUserDefinedFieldCollected::ACTIVE,
      default_value: "critical",
      display_name: "Root Cause",
      name: "root_cause",
      ordinal: "1.5",
      required: false,
      tag_key: "datacenter",
      type: DatadogAPIClient::V2::IncidentUserDefinedFieldFieldType::TEXTBOX,
      valid_values: [
        DatadogAPIClient::V2::IncidentUserDefinedFieldValidValue.new({
          description: "A critical severity incident.",
          display_name: "Critical",
          short_description: "Critical",
          value: "critical",
        }),
      ],
    }),
    relationships: DatadogAPIClient::V2::IncidentUserDefinedFieldCreateRelationships.new({
      incident_type: DatadogAPIClient::V2::RelationshipToIncidentType.new({
        data: DatadogAPIClient::V2::RelationshipToIncidentTypeData.new({
          id: "00000000-0000-0000-0000-000000000000",
          type: DatadogAPIClient::V2::IncidentTypeType::INCIDENT_TYPES,
        }),
      }),
    }),
    type: DatadogAPIClient::V2::IncidentUserDefinedFieldType::USER_DEFINED_FIELD,
  }),
})
p api_instance.create_incident_user_defined_field(body)
