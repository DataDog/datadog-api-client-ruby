# Get a pipeline preserves end-to-end acknowledgements returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V2::ObservabilityPipelinesAPI.new

# there is a valid "pipeline with end-to-end acknowledgements" in the system
PIPELINE_WITH_END_TO_END_ACKNOWLEDGEMENTS_DATA_ID = ENV["PIPELINE_WITH_END_TO_END_ACKNOWLEDGEMENTS_DATA_ID"]
p api_instance.get_pipeline(PIPELINE_WITH_END_TO_END_ACKNOWLEDGEMENTS_DATA_ID)
