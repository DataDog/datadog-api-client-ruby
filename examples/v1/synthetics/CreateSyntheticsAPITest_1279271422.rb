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
        exit_if_succeed: true,
        extracted_values: [
          DatadogAPIClient::V1::SyntheticsParsingOptions.new({
            field: "server",
            name: "EXTRACTED_VALUE",
            parser: DatadogAPIClient::V1::SyntheticsVariableParser.new({
              type: DatadogAPIClient::V1::SyntheticsGlobalVariableParserType::RAW,
            }),
            type: DatadogAPIClient::V1::SyntheticsLocalVariableParsingOptionsType::HTTP_HEADER,
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
        extracted_values_from_script: "dd.variable.set('STATUS_CODE', dd.response.statusCode);",
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
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        name: "SSL step",
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::SSL,
        allow_failure: false,
        is_critical: true,
        _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
          count: 0,
          interval: 300,
        }),
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS_IN_MORE_DAYS_THAN,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::CERTIFICATE,
            target: 10,
          }),
        ],
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          check_certificate_revocation: true,
          disable_aia_intermediate_fetching: true,
          host: "example.org",
          port: 443,
        }),
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        name: "DNS step",
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::DNS,
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
          host: "troisdizaines.com",
          dns_server: "8.8.8.8",
          dns_server_port: "53",
        }),
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        name: "TCP step",
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::TCP,
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
          host: "34.95.79.70",
          port: 80,
          should_track_hops: true,
          timeout: 32,
        }),
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        name: "ICMP step",
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::ICMP,
        allow_failure: false,
        is_critical: true,
        _retry: DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new({
          count: 0,
          interval: 300,
        }),
        assertions: [
          DatadogAPIClient::V1::SyntheticsAssertionTarget.new({
            operator: DatadogAPIClient::V1::SyntheticsAssertionOperator::IS,
            target: 0,
            type: DatadogAPIClient::V1::SyntheticsAssertionType::PACKET_LOSS_PERCENTAGE,
          }),
        ],
        request: DatadogAPIClient::V1::SyntheticsTestRequest.new({
          host: "34.95.79.70",
          number_of_packets: 4,
          should_track_hops: true,
          timeout: 38,
        }),
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        name: "Websocket step",
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::WEBSOCKET,
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
          url: "ws://34.95.79.70/web-socket",
          message: "My message",
          is_message_base64_encoded: true,
          headers: {
            f: "g",
          },
          basic_auth: DatadogAPIClient::V1::SyntheticsBasicAuthWeb.new({
            type: DatadogAPIClient::V1::SyntheticsBasicAuthWebType::WEB,
            username: "user",
            password: "password",
          }),
        }),
      }),
      DatadogAPIClient::V1::SyntheticsAPITestStep.new({
        name: "UDP step",
        subtype: DatadogAPIClient::V1::SyntheticsAPITestStepSubtype::UDP,
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
          host: "8.8.8.8",
          port: 53,
          message: "A image.google.com",
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
