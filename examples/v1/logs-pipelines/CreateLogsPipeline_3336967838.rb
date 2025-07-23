# Create a pipeline with Decoder Processor returns "OK" response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::LogsPipelinesAPI.new

body = DatadogAPIClient::V1::LogsPipeline.new({
  filter: DatadogAPIClient::V1::LogsFilter.new({
    query: "source:python",
  }),
  name: "testDecoderProcessor",
  processors: [
    DatadogAPIClient::V1::LogsDecoderProcessor.new({
      type: DatadogAPIClient::V1::LogsDecoderProcessorType::DECODER_PROCESSOR,
      is_enabled: true,
      name: "test_decoder",
      source: "encoded.field",
      target: "decoded.field",
      binary_to_text_encoding: DatadogAPIClient::V1::LogsDecoderProcessorBinaryToTextEncoding::BASE16,
      input_representation: DatadogAPIClient::V1::LogsDecoderProcessorInputRepresentation::UTF_8,
    }),
  ],
  tags: [],
})
p api_instance.create_logs_pipeline(body)
