# Update a RUM segment returns "No Content" response

require "datadog_api_client"
DatadogAPIClient.configure do |config|
  config.unstable_operations["v2.update_rum_segment".to_sym] = true
end
api_instance = DatadogAPIClient::V2::RUMUserSegmentsAPI.new

body = DatadogAPIClient::V2::RumSegmentUpdateRequest.new({
  data: DatadogAPIClient::V2::RumSegmentUpdateData.new({
    attributes: DatadogAPIClient::V2::RumSegmentUpdateAttributes.new({
      data_query: DatadogAPIClient::V2::RumSegmentDataQuery.new({
        combination: "(logs && apm_home) && NOT(apm_trace)",
        event_platforms: [
          DatadogAPIClient::V2::RumSegmentEventPlatform.new({
            facet: "@usr.id",
            from: 1709888355000,
            name: "logs",
            query: "@type:view @view.url_path:/logs",
            to: 1710493155000,
          }),
        ],
        journeys: [
          DatadogAPIClient::V2::RumSegmentJourney.new({
            conversion_type: "any",
            group_by: "@usr.id",
            name: "my_journey",
            search: "@type:view",
          }),
        ],
        reference_tables: [
          DatadogAPIClient::V2::RumSegmentReferenceTable.new({
            columns: [
              DatadogAPIClient::V2::RumSegmentReferenceTableColumn.new({
                name: "user_id",
              }),
            ],
            filter_query: "",
            join_condition: DatadogAPIClient::V2::RumSegmentReferenceTableJoinCondition.new({
              column_name: "user_id",
              facet: "@usr.id",
            }),
            name: "my_ref_table",
            table_name: "my_table",
          }),
        ],
        static: [
          DatadogAPIClient::V2::RumSegmentStaticEntry.new({
            id: "static-list-1",
            name: "My Static List",
            user_count: 500,
          }),
        ],
        templates: [
          DatadogAPIClient::V2::RumSegmentTemplateInstance.new({
            from: 1709888355000,
            parameters: {
              threshold: "5",
            },
            template_id: "stickiness-v1",
            to: 1710493155000,
          }),
        ],
      }),
      description: "Updated description.",
      name: "Updated Segment Name",
      tags: [
        "team:backend",
      ],
    }),
    id: "a1b2c3d4-1234-5678-9abc-123456789abc",
    type: DatadogAPIClient::V2::RumSegmentResourceType::SEGMENT,
  }),
})
api_instance.update_rum_segment("a1b2c3d4-1234-5678-9abc-123456789abc", body)
