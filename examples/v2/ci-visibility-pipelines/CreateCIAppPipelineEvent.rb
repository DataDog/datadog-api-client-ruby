# Send pipeline event returns "Request accepted for processing" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::CIVisibilityPipelinesAPI.new

body = DatadogAPIClient::V2::CIAppCreatePipelineEventRequest.new({
  data: DatadogAPIClient::V2::CIAppCreatePipelineEventRequestData.new({
    attributes: DatadogAPIClient::V2::CIAppCreatePipelineEventRequestAttributes.new({
      resource: DatadogAPIClient::V2::CIAppPipelineEventFinishedPipeline.new({
        level: DatadogAPIClient::V2::CIAppPipelineEventPipelineLevel::PIPELINE,
        unique_id: "3eacb6f3-ff04-4e10-8a9c-46e6d054024a",
        name: "Deploy to AWS",
        url: "https://my-ci-provider.example/pipelines/my-pipeline/run/1",
        start: (Time.now + -120),
        _end: (Time.now + -30),
        status: DatadogAPIClient::V2::CIAppPipelineEventPipelineStatus::SUCCESS,
        partial_retry: false,
        git: DatadogAPIClient::V2::CIAppGitInfo.new({
          repository_url: "https://github.com/DataDog/datadog-agent",
          sha: "7f263865994b76066c4612fd1965215e7dcb4cd2",
          author_email: "john.doe@email.com",
        }),
      }),
    }),
    type: DatadogAPIClient::V2::CIAppCreatePipelineEventRequestDataType::CIPIPELINE_RESOURCE_REQUEST,
  }),
})
p api_instance.create_ci_app_pipeline_event(body)
