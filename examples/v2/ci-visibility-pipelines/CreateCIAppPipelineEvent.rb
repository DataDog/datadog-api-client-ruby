# Send pipeline event returns "Request accepted for processing" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityPipelinesAPI.new

body = DatadogAPIClient::V2::CIAppCreatePipelineEventRequest.new({
  data: DatadogAPIClient::V2::CIAppCreatePipelineEventRequestData.new({
    attributes: DatadogAPIClient::V2::CIAppCreatePipelineEventRequestAttributes.new({
      resource: DatadogAPIClient::V2::CIAppPipelineEventPipeline.new({
        _end: (Time.now + -30),
        level: DatadogAPIClient::V2::CIAppPipelineEventPipelineLevel::PIPELINE,
        name: "Deploy to AWS",
        partial_retry: false,
        start: (Time.now + -120),
        status: DatadogAPIClient::V2::CIAppPipelineEventPipelineStatus::SUCCESS,
        unique_id: "3eacb6f3-ff04-4e10-8a9c-46e6d054024a",
        url: "https://my-ci-provider.example/pipelines/my-pipeline/run/1",
      }),
    }),
    type: DatadogAPIClient::V2::CIAppCreatePipelineEventRequestDataType::CIPIPELINE_RESOURCE_REQUEST,
  }),
})
p api_instance.create_ci_app_pipeline_event(body)
