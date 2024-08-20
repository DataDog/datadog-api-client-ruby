=begin
#Datadog API V2 Collection

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

module DatadogAPIClient::V2
  # The attributes of a Confluent account.
  class ConfluentAccountResponseAttributes
    include BaseGenericModel

    # The API key associated with your Confluent account.
    attr_reader :api_key

    # A list of Confluent resources associated with the Confluent account.
    attr_accessor :resources

    # A list of strings representing tags. Can be a single key, or key-value pairs separated by a colon.
    attr_accessor :tags

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'api_key' => :'api_key',
        :'resources' => :'resources',
        :'tags' => :'tags'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'api_key' => :'String',
        :'resources' => :'Array<ConfluentResourceResponseAttributes>',
        :'tags' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ConfluentAccountResponseAttributes` initialize method"
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

      if attributes.key?(:'api_key')
        self.api_key = attributes[:'api_key']
      end

      if attributes.key?(:'resources')
        if (value = attributes[:'resources']).is_a?(Array)
          self.resources = value
        end
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @api_key.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param api_key [Object] Object to be assigned
    # @!visibility private
    def api_key=(api_key)
      if api_key.nil?
        fail ArgumentError, 'invalid value for "api_key", api_key cannot be nil.'
      end
      @api_key = api_key
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          api_key == o.api_key &&
          resources == o.resources &&
          tags == o.tags
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [api_key, resources, tags].hash
    end
  end
end
