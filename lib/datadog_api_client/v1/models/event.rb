=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://openapi-generator.tech

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Object representing an event.
  class Event
    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # If an alert event is enabled, set its type.
    # For example, `error`, `warning`, `info`, `success`, `user_update`,
    # `recommendation`, and `snapshot`.
    attr_accessor :alert_type

    # POSIX timestamp of the event. Must be sent as an integer (that is no quotes).
    # Limited to events no older than 7 days.
    attr_accessor :date_happened

    # A device name.
    attr_accessor :device_name

    # Host name to associate with the event.
    # Any tags associated with the host are also applied to this event.
    attr_accessor :host

    # Integer ID of the event.
    attr_accessor :id

    # Handling IDs as large 64-bit numbers can cause loss of accuracy issues with some programming languages.
    # Instead, use the string representation of the Event ID to avoid losing accuracy.
    attr_accessor :id_str

    # Payload of the event.
    attr_accessor :payload

    # The priority of the event. For example, `normal` or `low`.
    attr_accessor :priority

    # The type of event being posted. Option examples include nagios, hudson, jenkins, my_apps, chef, puppet, git, bitbucket, etc.
    # A complete list of source attribute values [available here](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
    attr_accessor :source_type_name

    # A list of tags to apply to the event.
    attr_accessor :tags

    # The body of the event. Limited to 4000 characters. The text supports markdown.
    # To use markdown in the event text, start the text block with `%%% \n` and end the text block with `\n %%%`.
    # Use `msg_text` with the Datadog Ruby library.
    attr_accessor :text

    # The event title.
    attr_accessor :title

    # URL of the event.
    attr_accessor :url

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'alert_type' => :'alert_type',
        :'date_happened' => :'date_happened',
        :'device_name' => :'device_name',
        :'host' => :'host',
        :'id' => :'id',
        :'id_str' => :'id_str',
        :'payload' => :'payload',
        :'priority' => :'priority',
        :'source_type_name' => :'source_type_name',
        :'tags' => :'tags',
        :'text' => :'text',
        :'title' => :'title',
        :'url' => :'url'
      }
    end

    # Returns all the JSON keys this model knows about
    # @!visibility private
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'alert_type' => :'EventAlertType',
        :'date_happened' => :'Integer',
        :'device_name' => :'String',
        :'host' => :'String',
        :'id' => :'Integer',
        :'id_str' => :'String',
        :'payload' => :'String',
        :'priority' => :'EventPriority',
        :'source_type_name' => :'String',
        :'tags' => :'Array<String>',
        :'text' => :'String',
        :'title' => :'String',
        :'url' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'priority',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::Event` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::Event`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'alert_type')
        self.alert_type = attributes[:'alert_type']
      end

      if attributes.key?(:'date_happened')
        self.date_happened = attributes[:'date_happened']
      end

      if attributes.key?(:'device_name')
        self.device_name = attributes[:'device_name']
      end

      if attributes.key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'id_str')
        self.id_str = attributes[:'id_str']
      end

      if attributes.key?(:'payload')
        self.payload = attributes[:'payload']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'source_type_name')
        self.source_type_name = attributes[:'source_type_name']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
    def list_invalid_properties
      invalid_properties = Array.new
      if !@text.nil? && @text.to_s.length > 4000
        invalid_properties.push('invalid value for "text", the character length must be smaller than or equal to 4000.')
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@text.nil? && @text.to_s.length > 4000
      true
    end

    # Custom attribute writer method with validation
    # @param text [Object] Object to be assigned
    # @!visibility private
    def text=(text)
      if !text.nil? && text.to_s.length > 4000
        fail ArgumentError, 'invalid value for "text", the character length must be smaller than or equal to 4000.'
      end
      @text = text
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alert_type == o.alert_type &&
          date_happened == o.date_happened &&
          device_name == o.device_name &&
          host == o.host &&
          id == o.id &&
          id_str == o.id_str &&
          payload == o.payload &&
          priority == o.priority &&
          source_type_name == o.source_type_name &&
          tags == o.tags &&
          text == o.text &&
          title == o.title &&
          url == o.url
    end

    # @see the `==` method
    # @param o [Object] Object to be compared
    # @!visibility private
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [alert_type, date_happened, device_name, host, id, id_str, payload, priority, source_type_name, tags, text, title, url].hash
    end

    # Builds the object from hash
    # @param attributes [Hash] Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param attributes [Hash] Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param type [string] Data type
    # @param value [string] Value to be deserialized
    # @return [Object] Deserialized data
    # @!visibility private
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when :Array
        # generic array, return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = DatadogAPIClient::V1.const_get(type)
        res = klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
        if res.instance_of? DatadogAPIClient::V1::UnparsedObject
          self._unparsed = true
        end
        res
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    # @!visibility private
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
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
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param value [Object] Any valid value
    # @return [Hash] Returns the value in the form of hash
    # @!visibility private
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
