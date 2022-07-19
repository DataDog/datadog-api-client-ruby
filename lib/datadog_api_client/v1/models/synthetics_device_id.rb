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
  # The device ID.
  class SyntheticsDeviceID
    include BaseEnumModel

    LAPTOP_LARGE = "laptop_large".freeze
    TABLET = "tablet".freeze
    MOBILE_SMALL = "mobile_small".freeze
    CHROME_LAPTOP_LARGE = "chrome.laptop_large".freeze
    CHROME_TABLET = "chrome.tablet".freeze
    CHROME_MOBILE_SMALL = "chrome.mobile_small".freeze
    FIREFOX_LAPTOP_LARGE = "firefox.laptop_large".freeze
    FIREFOX_TABLET = "firefox.tablet".freeze
    FIREFOX_MOBILE_SMALL = "firefox.mobile_small".freeze
    EDGE_LAPTOP_LARGE = "edge.laptop_large".freeze
    EDGE_TABLET = "edge.tablet".freeze
    EDGE_MOBILE_SMALL = "edge.mobile_small".freeze
  end
end
