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
  # Attributes for a process summary.
  class ProcessSummaryAttributes
    include BaseGenericModel

    # Process command line.
    attr_accessor :cmdline

    # Host running the process.
    attr_accessor :host

    # Process ID.
    attr_accessor :pid

    # Parent process ID.
    attr_accessor :ppid

    # Time the process was started.
    attr_accessor :start

    # List of tags associated with the process.
    attr_accessor :tags

    # Time the process was seen.
    attr_accessor :timestamp

    # Process owner.
    attr_accessor :user

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'cmdline' => :'cmdline',
        :'host' => :'host',
        :'pid' => :'pid',
        :'ppid' => :'ppid',
        :'start' => :'start',
        :'tags' => :'tags',
        :'timestamp' => :'timestamp',
        :'user' => :'user'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'cmdline' => :'String',
        :'host' => :'String',
        :'pid' => :'Integer',
        :'ppid' => :'Integer',
        :'start' => :'String',
        :'tags' => :'Array<String>',
        :'timestamp' => :'String',
        :'user' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::ProcessSummaryAttributes` initialize method"
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

      if attributes.key?(:'cmdline')
        self.cmdline = attributes[:'cmdline']
      end

      if attributes.key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.key?(:'pid')
        self.pid = attributes[:'pid']
      end

      if attributes.key?(:'ppid')
        self.ppid = attributes[:'ppid']
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
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
          cmdline == o.cmdline &&
          host == o.host &&
          pid == o.pid &&
          ppid == o.ppid &&
          start == o.start &&
          tags == o.tags &&
          timestamp == o.timestamp &&
          user == o.user &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [cmdline, host, pid, ppid, start, tags, timestamp, user, additional_properties].hash
    end
  end
end
