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
  # Object containing results for your Synthetic browser test.
  class SyntheticsBrowserTestResultData
    include BaseGenericModel

    # Type of browser device used for the browser test.
    attr_accessor :browser_type

    # Browser version used for the browser test.
    attr_accessor :browser_version

    # Object describing the device used to perform the Synthetic test.
    attr_accessor :device

    # Global duration in second of the browser test.
    attr_accessor :duration

    # Error returned for the browser test.
    attr_accessor :error

    # The browser test failure details.
    attr_accessor :failure

    # Whether or not the browser test was conducted.
    attr_accessor :passed

    # The amount of email received during the browser test.
    attr_accessor :received_email_count

    # Starting URL for the browser test.
    attr_accessor :start_url

    # Array containing the different browser test steps.
    attr_accessor :step_details

    # Whether or not a thumbnail is associated with the browser test.
    attr_accessor :thumbnails_bucket_key

    # Time in second to wait before the browser test starts after
    # reaching the start URL.
    attr_accessor :time_to_interactive

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'browser_type' => :'browserType',
        :'browser_version' => :'browserVersion',
        :'device' => :'device',
        :'duration' => :'duration',
        :'error' => :'error',
        :'failure' => :'failure',
        :'passed' => :'passed',
        :'received_email_count' => :'receivedEmailCount',
        :'start_url' => :'startUrl',
        :'step_details' => :'stepDetails',
        :'thumbnails_bucket_key' => :'thumbnailsBucketKey',
        :'time_to_interactive' => :'timeToInteractive'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'browser_type' => :'String',
        :'browser_version' => :'String',
        :'device' => :'SyntheticsDevice',
        :'duration' => :'Float',
        :'error' => :'String',
        :'failure' => :'SyntheticsBrowserTestResultFailure',
        :'passed' => :'Boolean',
        :'received_email_count' => :'Integer',
        :'start_url' => :'String',
        :'step_details' => :'Array<SyntheticsStepDetail>',
        :'thumbnails_bucket_key' => :'Boolean',
        :'time_to_interactive' => :'Float'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SyntheticsBrowserTestResultData` initialize method"
      end

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'browser_type')
        self.browser_type = attributes[:'browser_type']
      end

      if attributes.key?(:'browser_version')
        self.browser_version = attributes[:'browser_version']
      end

      if attributes.key?(:'device')
        self.device = attributes[:'device']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.key?(:'failure')
        self.failure = attributes[:'failure']
      end

      if attributes.key?(:'passed')
        self.passed = attributes[:'passed']
      end

      if attributes.key?(:'received_email_count')
        self.received_email_count = attributes[:'received_email_count']
      end

      if attributes.key?(:'start_url')
        self.start_url = attributes[:'start_url']
      end

      if attributes.key?(:'step_details')
        if (value = attributes[:'step_details']).is_a?(Array)
          self.step_details = value
        end
      end

      if attributes.key?(:'thumbnails_bucket_key')
        self.thumbnails_bucket_key = attributes[:'thumbnails_bucket_key']
      end

      if attributes.key?(:'time_to_interactive')
        self.time_to_interactive = attributes[:'time_to_interactive']
      end
    end

    # Returns the object in the form of hash, with additionalProperties support.
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      self.additional_properties.each_pair do |attr, value|
        hash[attr] = value
      end
      hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          browser_type == o.browser_type &&
          browser_version == o.browser_version &&
          device == o.device &&
          duration == o.duration &&
          error == o.error &&
          failure == o.failure &&
          passed == o.passed &&
          received_email_count == o.received_email_count &&
          start_url == o.start_url &&
          step_details == o.step_details &&
          thumbnails_bucket_key == o.thumbnails_bucket_key &&
          time_to_interactive == o.time_to_interactive
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [browser_type, browser_version, device, duration, error, failure, passed, received_email_count, start_url, step_details, thumbnails_bucket_key, time_to_interactive].hash
    end
  end
end
