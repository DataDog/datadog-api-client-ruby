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
  # Response Object that includes your query and the list of metrics retrieved.
  class MetricsQueryResponse
    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Message indicating the errors if status is not `ok`.
    attr_accessor :error

    # Start of requested time window, milliseconds since Unix epoch.
    attr_accessor :from_date

    # List of tag keys on which to group.
    attr_accessor :group_by

    # Message indicating `success` if status is `ok`.
    attr_accessor :message

    # Query string
    attr_accessor :query

    # Type of response.
    attr_accessor :res_type

    # List of timeseries queried.
    attr_accessor :series

    # Status of the query.
    attr_accessor :status

    # End of requested time window, milliseconds since Unix epoch.
    attr_accessor :to_date

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'error' => :'error',
        :'from_date' => :'from_date',
        :'group_by' => :'group_by',
        :'message' => :'message',
        :'query' => :'query',
        :'res_type' => :'res_type',
        :'series' => :'series',
        :'status' => :'status',
        :'to_date' => :'to_date'
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
        :'error' => :'String',
        :'from_date' => :'Integer',
        :'group_by' => :'Array<String>',
        :'message' => :'String',
        :'query' => :'String',
        :'res_type' => :'String',
        :'series' => :'Array<MetricsQueryMetadata>',
        :'status' => :'String',
        :'to_date' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::MetricsQueryResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::MetricsQueryResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.key?(:'from_date')
        self.from_date = attributes[:'from_date']
      end

      if attributes.key?(:'group_by')
        if (value = attributes[:'group_by']).is_a?(Array)
          self.group_by = value
        end
      end

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'res_type')
        self.res_type = attributes[:'res_type']
      end

      if attributes.key?(:'series')
        if (value = attributes[:'series']).is_a?(Array)
          self.series = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'to_date')
        self.to_date = attributes[:'to_date']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @!visibility private
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          error == o.error &&
          from_date == o.from_date &&
          group_by == o.group_by &&
          message == o.message &&
          query == o.query &&
          res_type == o.res_type &&
          series == o.series &&
          status == o.status &&
          to_date == o.to_date
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
      [error, from_date, group_by, message, query, res_type, series, status, to_date].hash
    end

    # Builds the object from hash
    # @param attributes [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param attributes [Hash] attributes Model attributes in the form of hash
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
    # @param value [Object] value Any valid value
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
