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
  # JSON object containing all span attributes and their associated values.
  class SpansAttributes
    include BaseGenericModel

    # JSON object of attributes from your span.
    attr_accessor :attributes

    # JSON object of custom spans data.
    attr_accessor :custom

    # End timestamp of your span.
    attr_accessor :end_timestamp

    # Name of the environment from where the spans are being sent.
    attr_accessor :env

    # Name of the machine from where the spans are being sent.
    attr_accessor :host

    # The reason why the span was ingested.
    attr_accessor :ingestion_reason

    # Id of the span that's parent of this span.
    attr_accessor :parent_id

    # Unique identifier of the resource.
    attr_accessor :resource_hash

    # The name of the resource.
    attr_accessor :resource_name

    # The reason why the span was indexed.
    attr_accessor :retained_by

    # The name of the application or service generating the span events.
    # It is used to switch from APM to Logs, so make sure you define the same
    # value when you use both products.
    attr_accessor :service

    # Whether or not the span was collected as a stand-alone span. Always associated to "single_span" ingestion_reason if true.
    attr_accessor :single_span

    # Id of the span.
    attr_accessor :span_id

    # Start timestamp of your span.
    attr_accessor :start_timestamp

    # Array of tags associated with your span.
    attr_accessor :tags

    # Id of the trace to which the span belongs.
    attr_accessor :trace_id

    # The type of the span.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'attributes' => :'attributes',
        :'custom' => :'custom',
        :'end_timestamp' => :'end_timestamp',
        :'env' => :'env',
        :'host' => :'host',
        :'ingestion_reason' => :'ingestion_reason',
        :'parent_id' => :'parent_id',
        :'resource_hash' => :'resource_hash',
        :'resource_name' => :'resource_name',
        :'retained_by' => :'retained_by',
        :'service' => :'service',
        :'single_span' => :'single_span',
        :'span_id' => :'span_id',
        :'start_timestamp' => :'start_timestamp',
        :'tags' => :'tags',
        :'trace_id' => :'trace_id',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'attributes' => :'Hash<String, Object>',
        :'custom' => :'Hash<String, Object>',
        :'end_timestamp' => :'Time',
        :'env' => :'String',
        :'host' => :'String',
        :'ingestion_reason' => :'String',
        :'parent_id' => :'String',
        :'resource_hash' => :'String',
        :'resource_name' => :'String',
        :'retained_by' => :'String',
        :'service' => :'String',
        :'single_span' => :'Boolean',
        :'span_id' => :'String',
        :'start_timestamp' => :'Time',
        :'tags' => :'Array<String>',
        :'trace_id' => :'String',
        :'type' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SpansAttributes` initialize method"
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

      if attributes.key?(:'attributes')
        self.attributes = attributes[:'attributes']
      end

      if attributes.key?(:'custom')
        self.custom = attributes[:'custom']
      end

      if attributes.key?(:'end_timestamp')
        self.end_timestamp = attributes[:'end_timestamp']
      end

      if attributes.key?(:'env')
        self.env = attributes[:'env']
      end

      if attributes.key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.key?(:'ingestion_reason')
        self.ingestion_reason = attributes[:'ingestion_reason']
      end

      if attributes.key?(:'parent_id')
        self.parent_id = attributes[:'parent_id']
      end

      if attributes.key?(:'resource_hash')
        self.resource_hash = attributes[:'resource_hash']
      end

      if attributes.key?(:'resource_name')
        self.resource_name = attributes[:'resource_name']
      end

      if attributes.key?(:'retained_by')
        self.retained_by = attributes[:'retained_by']
      end

      if attributes.key?(:'service')
        self.service = attributes[:'service']
      end

      if attributes.key?(:'single_span')
        self.single_span = attributes[:'single_span']
      end

      if attributes.key?(:'span_id')
        self.span_id = attributes[:'span_id']
      end

      if attributes.key?(:'start_timestamp')
        self.start_timestamp = attributes[:'start_timestamp']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'trace_id')
        self.trace_id = attributes[:'trace_id']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
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
          attributes == o.attributes &&
          custom == o.custom &&
          end_timestamp == o.end_timestamp &&
          env == o.env &&
          host == o.host &&
          ingestion_reason == o.ingestion_reason &&
          parent_id == o.parent_id &&
          resource_hash == o.resource_hash &&
          resource_name == o.resource_name &&
          retained_by == o.retained_by &&
          service == o.service &&
          single_span == o.single_span &&
          span_id == o.span_id &&
          start_timestamp == o.start_timestamp &&
          tags == o.tags &&
          trace_id == o.trace_id &&
          type == o.type &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [attributes, custom, end_timestamp, env, host, ingestion_reason, parent_id, resource_hash, resource_name, retained_by, service, single_span, span_id, start_timestamp, tags, trace_id, type, additional_properties].hash
    end
  end
end
