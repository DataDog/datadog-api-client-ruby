# Update a widget returns "Successful Response" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::WidgetsAPI.new

body = DatadogAPIClient::V2::CreateOrUpdateWidgetRequestJSONAPIRequestDocument.new({
  data: DatadogAPIClient::V2::CreateOrUpdateWidgetRequestResourceObjectRequest.new({
    attributes: DatadogAPIClient::V2::CreateOrUpdateWidgetRequestAttributes.new({
      definition: DatadogAPIClient::V2::Definition.new({
        title: "My Timeseries Widget",
        type: DatadogAPIClient::V2::WidgetType::TIMESERIES,
      }),
      tags: [],
    }),
    id: nil,
    lid: nil,
    links: DatadogAPIClient::V2::WidgetLinks.new({
      described_by: nil,
      first: nil,
      last: nil,
      _next: nil,
      prev: nil,
      related: nil,
      _self: nil,
    }),
    meta: nil,
    relationships: nil,
    type: "",
  }),
  errors: [
    DatadogAPIClient::V2::WidgetErrorInput.new({
      code: nil,
      detail: nil,
      id: nil,
      links: DatadogAPIClient::V2::ErrorLinks.new({
        about: "",
      }),
      meta: nil,
      source: DatadogAPIClient::V2::ErrorSource.new({
        header: nil,
        parameter: nil,
        pointer: nil,
      }),
      status: nil,
      title: nil,
    }),
  ],
  included: [
    DatadogAPIClient::V2::WidgetResourceObjectInput.new({
      attributes: nil,
      id: "",
      links: DatadogAPIClient::V2::WidgetLinks.new({
        described_by: nil,
        first: nil,
        last: nil,
        _next: nil,
        prev: nil,
        related: nil,
        _self: nil,
      }),
      meta: nil,
      relationships: nil,
      type: "",
    }),
  ],
  links: DatadogAPIClient::V2::WidgetLinks.new({
    described_by: nil,
    first: nil,
    last: nil,
    _next: nil,
    prev: nil,
    related: nil,
    _self: nil,
  }),
  meta: nil,
})
p api_instance.update_widget_api_v2_widgets_experience_type_uuid_put("9b1deb4d-3b7d-4bad-9bdd-2b0d7b3dcb6d", WidgetExperienceType::CCM_REPORTS, body)
