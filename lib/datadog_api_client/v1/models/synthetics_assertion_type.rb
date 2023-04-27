=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Type of the assertion.
  class SyntheticsAssertionType
    include BaseEnumModel

    BODY = "body".freeze
    HEADER = "header".freeze
    STATUS_CODE = "statusCode".freeze
    CERTIFICATE = "certificate".freeze
    RESPONSE_TIME = "responseTime".freeze
    PROPERTY = "property".freeze
    RECORD_EVERY = "recordEvery".freeze
    RECORD_SOME = "recordSome".freeze
    TLS_VERSION = "tlsVersion".freeze
    MIN_TLS_VERSION = "minTlsVersion".freeze
    LATENCY = "latency".freeze
    PACKET_LOSS_PERCENTAGE = "packetLossPercentage".freeze
    PACKETS_RECEIVED = "packetsReceived".freeze
    NETWORK_HOP = "networkHop".freeze
    RECEIVED_MESSAGE = "receivedMessage".freeze
    GRPC_HEALTHCHECK_STATUS = "grpcHealthcheckStatus".freeze
    GRPC_METADATA = "grpcMetadata".freeze
    GRPC_PROTO = "grpcProto".freeze
    CONNECTION = "connection".freeze
  end
end
