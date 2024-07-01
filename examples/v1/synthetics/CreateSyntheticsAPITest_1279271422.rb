# Create an API test with multi subtype returns "OK - Returns the created test details." response

require "datadog_api_client"
api_instance = DatadogAPIClient::V1::SyntheticsAPI.new

body = DatadogAPIClient::V1::SyntheticsAPITest.new({
  config: DatadogAPIClient::V1::SyntheticsAPITestConfig.new({
    config_variables: [
      DatadogAPIClient::V1::SyntheticsConfigVariable.new({
        example: "content-type",
        name: "PROPERTY",
        pattern: "content-type",
        type: DatadogAPIClient::V1::SyntheticsConfigVariableType::TEXT,
      }),
    ],
    steps: [
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        allow_failure: true,
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::STATUS_CODE,
            target: 200,
          }),
        ],
        extracted_values: [
          DatadogAPIClient::V1::SyntheticsParsingOptions.new({
            field: "server",
            name: "EXTRACTED_VALUE",
            parser: DatadogAPIClient::V1::SyntheticsVariableParser.new({
              type: DatadogAPIClient::V1::SyntheticsGlobalVariableParserType::RAW,
            }),
            type: DatadogAPIClient::V1::SyntheticsGlobalVariableParseTestOptionsType::HTTP_HEADER,
            secure: true,
          }),
        ],
        is_critical: true,
        name: "request is sent",
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          method: "GET",
          timeout: 10,
          url: "https://datadoghq.com",
          http_version: DatadogAPIClient::V1::SyntheticsTestOptionsHTTPVersion::HTTP2,
        }),
        _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
          count: 5,
          interval: 1000,
        }),
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::HTTP,
      }),
      DatadogAPIClient::V1::SyntheticsAPIWaitStep.new({
        name: "Wait",
        subtype: DatadogAPIClient::V1::SyntheticsAPIWaitStepSubtype::WAIT,
        value: 1,
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        name: "GRPC CALL",
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::GRPC,
        extracted_values: [],
        allow_failure: false,
        is_critical: true,
        _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
          count: 0,
          interval: 300,
        }),
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::LESS_THAN,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::RESPONSE_TIME,
            target: 1000,
          }),
        ],
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          host: "grpcbin.test.k6.io",
          port: 9000,
          service: "grpcbin.GRPCBin",
          method: "Index",
          message: "{}",
          compressed_json_descriptor: "eJy1lU1z2yAQhv+Lzj74I3ETH506bQ7OZOSm1w4Wa4epBARQppqM/3v5koCJJdvtxCdW77vPssCO3zMKUgHOFu/ZXvBiS6hZho/f8qe7pftYgXphWJrlA8XwxywEvNba+6PhkC2yVcVVswYp0R6ykRYlZ1SCV21SDrxsssPIeS9FJKqGfK2rqnmmSBwhWa2XlKgtaQPiDcRGCUDVfwGD2sKUqKEtc1cSoOrsMlaMOec1sySYCCgUYRSVLv2zSva2u+FQkB0pVkIw8bFuIudOOn3pOaKYVT3Iy97Pd0AYhOx5QcMsnxvRHlnuLf8ETDd3CNtrv2nejkDpRnANCmGkkFn/hsYzpBKE7jVbufgnKnV9HRM9zRPDDKPttYT61n0TdWkAAjggk9AhuxIeaXd69CYTcsGw7cBTakLVbNpRzGEgyWjkSOpMbZXkhGL6oX30R49qt3GoHrap7i0XdD41WQ+2icCNm5p1hmFqnHNlcla0riKmDZ183crDxChjbnurtxHPRE784sVhWvDfGP+SsTKibU3o5NtWHuZFGZOxP6P5VXqIOvaOSec4eYohyd7NslHuJbd1bewds85xYrNxkr2d+5IhFWF3NvaO684xjE2S5ulY+tu64Pna0fCPJgzw6vF5/WucLcYjt5xoq19O3UDptOg/OamJQRaCcPPnMTQ2QDFn+uhPvUfnCrMc99upyQY4Ui9Dlc/YoG3R/v4Cs9YE+g==",
          metadata: {},
          call_type: DatadogAPIClient::V1::SyntheticsTestCallType::UNARY,
        }),
      }),
    ],
  }),
  locations: [
    "aws:us-east-2",
  ],
  message: "BDD test payload: synthetics_api_test_multi_step_payload.json",
  name: "Example-Synthetic",
  options: DatadogAPIClient::V1::SyntheticsTestOptions.new({
    accept_self_signed: false,
    allow_insecure: true,
    follow_redirects: true,
    min_failure_duration: 10,
    min_location_failed: 1,
    monitor_name: "Example-Synthetic",
    monitor_priority: 5,
    _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
      count: 3,
      interval: 1000,
    }),
    tick_every: 60,
  }),
  subtype: DatadogAPIClient::V1::SyntheticsTestDetailsSubType::MULTI,
  tags: [
    "testing:api",
  ],
  type: DatadogAPIClient::V1::SyntheticsAPITestType::API,
})
p api_instance.create_synthetics_api_test(body)
