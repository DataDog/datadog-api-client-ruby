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
  # Event attributes.
  class EventPayload
    include BaseGenericModel

    # An arbitrary string to use for aggregation when correlating events. Limited to 100 characters.
    attr_reader :aggregation_key

    # JSON object for custom attributes. Schema are different per each event category.
    attr_reader :attributes

    # Event category to identify the type of event. Only the value `change` is supported. Support for other categories are coming. please reach out to datadog support if you're interested.
    attr_reader :category

    # The body of the event. Limited to 4000 characters.
    attr_reader :message

    # A list of tags to apply to the event.
    # Refer to [Tags docs](https://docs.datadoghq.com/getting_started/tagging/).
    attr_accessor :tags

    # Timestamp when the event occurred. Must follow [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.
    # For example `"2017-01-15T01:30:15.010000Z"`.
    # Defaults to the timestamp of receipt. Limited to values no older than 18 hours.
    attr_accessor :timestamp

    # The event title. Limited to 500 characters.
    attr_reader :title

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggregation_key' => :'aggregation_key',
        :'attributes' => :'attributes',
        :'category' => :'category',
        :'message' => :'message',
        :'tags' => :'tags',
        :'timestamp' => :'timestamp',
        :'title' => :'title'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'aggregation_key' => :'String',
        :'attributes' => :'EventPayloadAttributes',
        :'category' => :'EventCategory',
        :'message' => :'String',
        :'tags' => :'Array<String>',
        :'timestamp' => :'String',
        :'title' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::EventPayload` initialize method"
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

      if attributes.key?(:'aggregation_key')
        self.aggregation_key = attributes[:'aggregation_key']
      end

      if attributes.key?(:'attributes')
        self.attributes = attributes[:'attributes']
      end

      if attributes.key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@aggregation_key.nil? && @aggregation_key.to_s.length > 100
      return false if @attributes.nil?
      return false if @category.nil?
      return false if !@message.nil? && @message.to_s.length > 4000
      return false if @title.nil?
      return false if @title.to_s.length > 500
      true
    end

    # Custom attribute writer method with validation
    # @param aggregation_key [Object] Object to be assigned
    # @!visibility private
    def aggregation_key=(aggregation_key)
      if !aggregation_key.nil? && aggregation_key.to_s.length > 100
        fail ArgumentError, 'invalid value for "aggregation_key", the character length must be smaller than or equal to 100.'
      end
      @aggregation_key = aggregation_key
    end

    # Custom attribute writer method with validation
    # @param attributes [Object] Object to be assigned
    # @!visibility private
    def attributes=(attributes)
      if attributes.nil?
        fail ArgumentError, 'invalid value for "attributes", attributes cannot be nil.'
      end
      @attributes = attributes
    end

    # Custom attribute writer method with validation
    # @param category [Object] Object to be assigned
    # @!visibility private
    def category=(category)
      if category.nil?
        fail ArgumentError, 'invalid value for "category", category cannot be nil.'
      end
      @category = category
    end

    # Custom attribute writer method with validation
    # @param message [Object] Object to be assigned
    # @!visibility private
    def message=(message)
      if !message.nil? && message.to_s.length > 4000
        fail ArgumentError, 'invalid value for "message", the character length must be smaller than or equal to 4000.'
      end
      @message = message
    end

    # Custom attribute writer method with validation
    # @param title [Object] Object to be assigned
    # @!visibility private
    def title=(title)
      if title.nil?
        fail ArgumentError, 'invalid value for "title", title cannot be nil.'
      end
      if title.to_s.length > 500
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 500.'
      end
      @title = title
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
          aggregation_key == o.aggregation_key &&
          attributes == o.attributes &&
          category == o.category &&
          message == o.message &&
          tags == o.tags &&
          timestamp == o.timestamp &&
          title == o.title &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [aggregation_key, attributes, category, message, tags, timestamp, title, additional_properties].hash
    end
  end
end
