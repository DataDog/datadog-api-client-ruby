# Send pipeline job event returns "Request accepted for processing" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityPipelinesAPI.new

body = DatadogAPIClient::V2::CIAppCreatePipelineEventRequest.new({
  data: DatadogAPIClient::V2::CIAppCreatePipelineEventRequestData.new({
    attributes: DatadogAPIClient::V2::CIAppCreatePipelineEventRequestAttributes.new({
      resource: DatadogAPIClient::V2::CIAppPipelineEventJob.new({
        _end: (Time.now + -30),
        level: DatadogAPIClient::V2::CIAppPipelineEventJobLevel::JOB,
        name: "Build image",
        start: (Time.now + -120),
        status: DatadogAPIClient::V2::CIAppPipelineEventJobStatus::ERROR,
        id: "cf9456de-8b9e-4c27-aa79-27b1e78c1a33",
        pipeline_unique_id: "3eacb6f3-ff04-4e10-8a9c-46e6d054024a",
        pipeline_name: "Deploy to AWS",
        url: "https://my-ci-provider.example/jobs/my-jobs/run/1",
      }),
    }),
    type: DatadogAPIClient::V2::CIAppCreatePipelineEventRequestDataType::CIPIPELINE_RESOURCE_REQUEST,
  }),
})
p api_instance.create_ci_app_pipeline_event(body)
