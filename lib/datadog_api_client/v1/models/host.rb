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
  # Object representing a host.
  class Host
    # whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # Host aliases collected by Datadog.
    attr_accessor :aliases

    # The Datadog integrations reporting metrics for the host.
    attr_accessor :apps

    # AWS name of your host.
    attr_accessor :aws_name

    # The host name.
    attr_accessor :host_name

    # The host ID.
    attr_accessor :id

    # If a host is muted or unmuted.
    attr_accessor :is_muted

    # Last time the host reported a metric data point.
    attr_accessor :last_reported_time

    # Metadata associated with your host.
    attr_accessor :meta

    # Host Metrics collected.
    attr_accessor :metrics

    # Timeout of the mute applied to your host.
    attr_accessor :mute_timeout

    # The host name.
    attr_accessor :name

    # Source or cloud provider associated with your host.
    attr_accessor :sources

    # List of tags for each source (AWS, Datadog Agent, Chef..).
    attr_accessor :tags_by_source

    # Displays UP when the expected metrics are received and displays `???` if no metrics are received.
    attr_accessor :up

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aliases' => :'aliases',
        :'apps' => :'apps',
        :'aws_name' => :'aws_name',
        :'host_name' => :'host_name',
        :'id' => :'id',
        :'is_muted' => :'is_muted',
        :'last_reported_time' => :'last_reported_time',
        :'meta' => :'meta',
        :'metrics' => :'metrics',
        :'mute_timeout' => :'mute_timeout',
        :'name' => :'name',
        :'sources' => :'sources',
        :'tags_by_source' => :'tags_by_source',
        :'up' => :'up'
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
        :'aliases' => :'Array<String>',
        :'apps' => :'Array<String>',
        :'aws_name' => :'String',
        :'host_name' => :'String',
        :'id' => :'Integer',
        :'is_muted' => :'Boolean',
        :'last_reported_time' => :'Integer',
        :'meta' => :'HostMeta',
        :'metrics' => :'HostMetrics',
        :'mute_timeout' => :'Integer',
        :'name' => :'String',
        :'sources' => :'Array<String>',
        :'tags_by_source' => :'Hash<String, Array<String>>',
        :'up' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::Host` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::Host`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aliases')
        if (value = attributes[:'aliases']).is_a?(Array)
          self.aliases = value
        end
      end

      if attributes.key?(:'apps')
        if (value = attributes[:'apps']).is_a?(Array)
          self.apps = value
        end
      end

      if attributes.key?(:'aws_name')
        self.aws_name = attributes[:'aws_name']
      end

      if attributes.key?(:'host_name')
        self.host_name = attributes[:'host_name']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'is_muted')
        self.is_muted = attributes[:'is_muted']
      end

      if attributes.key?(:'last_reported_time')
        self.last_reported_time = attributes[:'last_reported_time']
      end

      if attributes.key?(:'meta')
        self.meta = attributes[:'meta']
      end

      if attributes.key?(:'metrics')
        self.metrics = attributes[:'metrics']
      end

      if attributes.key?(:'mute_timeout')
        self.mute_timeout = attributes[:'mute_timeout']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'sources')
        if (value = attributes[:'sources']).is_a?(Array)
          self.sources = value
        end
      end

      if attributes.key?(:'tags_by_source')
        self.tags_by_source = attributes[:'tags_by_source']
      end

      if attributes.key?(:'up')
        self.up = attributes[:'up']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    # @!visibility private
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
          aliases == o.aliases &&
          apps == o.apps &&
          aws_name == o.aws_name &&
          host_name == o.host_name &&
          id == o.id &&
          is_muted == o.is_muted &&
          last_reported_time == o.last_reported_time &&
          meta == o.meta &&
          metrics == o.metrics &&
          mute_timeout == o.mute_timeout &&
          name == o.name &&
          sources == o.sources &&
          tags_by_source == o.tags_by_source &&
          up == o.up
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
      [aliases, apps, aws_name, host_name, id, is_muted, last_reported_time, meta, metrics, mute_timeout, name, sources, tags_by_source, up].hash
    end

    # Builds the object from hash
    # @param attributes [Hash] Model attributes in the form of hash
    # @return [Object] Returns the model itself
    # @!visibility private
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
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