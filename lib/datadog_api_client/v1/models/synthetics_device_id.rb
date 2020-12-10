=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-SNAPSHOT

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  class SyntheticsDeviceID
    LAPTOP_LARGE = "laptop_large".freeze
    TABLET = "tablet".freeze
    MOBILE_SMALL = "mobile_small".freeze
    CHROME_LAPTOP_LARGE = "chrome.laptop_large".freeze
    CHROME_TABLET = "chrome.tablet".freeze
    CHROME_MOBILE_SMALL = "chrome.mobile_small".freeze
    FIREFOX_LAPTOP_LARGE = "firefox.laptop_large".freeze
    FIREFOX_TABLET = "firefox.tablet".freeze
    FIREFOX_MOBILE_SMALL = "firefox.mobile_small".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = SyntheticsDeviceID.constants.select { |c| SyntheticsDeviceID::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #SyntheticsDeviceID" if constantValues.empty?
      value
    end
  end
end
