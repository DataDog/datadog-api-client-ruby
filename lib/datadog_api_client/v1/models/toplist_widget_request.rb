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
  # Updated top list widget.
  class ToplistWidgetRequest
    include BaseGenericModel

    # The log query.
    attr_accessor :apm_query

    # The log query.
    attr_accessor :audit_query

    # List of conditional formats.
    attr_reader :conditional_formats

    # The log query.
    attr_accessor :event_query

    # List of formulas that operate on queries.
    attr_accessor :formulas

    # The log query.
    attr_accessor :log_query

    # The log query.
    attr_accessor :network_query

    # The process query to use in the widget.
    attr_accessor :process_query

    # The log query.
    attr_accessor :profile_metrics_query

    # Widget query.
    attr_accessor :q

    # List of queries that can be returned directly or used in formulas.
    attr_accessor :queries

    # Timeseries, scalar, or event list response. Event list response formats are supported by Geomap widgets.
    attr_accessor :response_format

    # The log query.
    attr_accessor :rum_query

    # The log query.
    attr_accessor :security_query

    # The controls for sorting the widget.
    attr_accessor :sort

    # Define request widget style.
    attr_accessor :style

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'apm_query' => :'apm_query',
        :'audit_query' => :'audit_query',
        :'conditional_formats' => :'conditional_formats',
        :'event_query' => :'event_query',
        :'formulas' => :'formulas',
        :'log_query' => :'log_query',
        :'network_query' => :'network_query',
        :'process_query' => :'process_query',
        :'profile_metrics_query' => :'profile_metrics_query',
        :'q' => :'q',
        :'queries' => :'queries',
        :'response_format' => :'response_format',
        :'rum_query' => :'rum_query',
        :'security_query' => :'security_query',
        :'sort' => :'sort',
        :'style' => :'style'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'apm_query' => :'LogQueryDefinition',
        :'audit_query' => :'LogQueryDefinition',
        :'conditional_formats' => :'Array<WidgetConditionalFormat>',
        :'event_query' => :'LogQueryDefinition',
        :'formulas' => :'Array<WidgetFormula>',
        :'log_query' => :'LogQueryDefinition',
        :'network_query' => :'LogQueryDefinition',
        :'process_query' => :'ProcessQueryDefinition',
        :'profile_metrics_query' => :'LogQueryDefinition',
        :'q' => :'String',
        :'queries' => :'Array<FormulaAndFunctionQueryDefinition>',
        :'response_format' => :'FormulaAndFunctionResponseFormat',
        :'rum_query' => :'LogQueryDefinition',
        :'security_query' => :'LogQueryDefinition',
        :'sort' => :'WidgetSortBy',
        :'style' => :'WidgetRequestStyle'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::ToplistWidgetRequest` initialize method"
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

      if attributes.key?(:'apm_query')
        self.apm_query = attributes[:'apm_query']
      end

      if attributes.key?(:'audit_query')
        self.audit_query = attributes[:'audit_query']
      end

      if attributes.key?(:'conditional_formats')
        if (value = attributes[:'conditional_formats']).is_a?(Array)
          self.conditional_formats = value
        end
      end

      if attributes.key?(:'event_query')
        self.event_query = attributes[:'event_query']
      end

      if attributes.key?(:'formulas')
        if (value = attributes[:'formulas']).is_a?(Array)
          self.formulas = value
        end
      end

      if attributes.key?(:'log_query')
        self.log_query = attributes[:'log_query']
      end

      if attributes.key?(:'network_query')
        self.network_query = attributes[:'network_query']
      end

      if attributes.key?(:'process_query')
        self.process_query = attributes[:'process_query']
      end

      if attributes.key?(:'profile_metrics_query')
        self.profile_metrics_query = attributes[:'profile_metrics_query']
      end

      if attributes.key?(:'q')
        self.q = attributes[:'q']
      end

      if attributes.key?(:'queries')
        if (value = attributes[:'queries']).is_a?(Array)
          self.queries = value
        end
      end

      if attributes.key?(:'response_format')
        self.response_format = attributes[:'response_format']
      end

      if attributes.key?(:'rum_query')
        self.rum_query = attributes[:'rum_query']
      end

      if attributes.key?(:'security_query')
        self.security_query = attributes[:'security_query']
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.key?(:'style')
        self.style = attributes[:'style']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@conditional_formats.nil? && @conditional_formats.length < 1
      true
    end

    # Custom attribute writer method with validation
    # @param conditional_formats [Object] Object to be assigned
    # @!visibility private
    def conditional_formats=(conditional_formats)
      if !conditional_formats.nil? && conditional_formats.length < 1
        fail ArgumentError, 'invalid value for "conditional_formats", number of items must be greater than or equal to 1.'
      end
      @conditional_formats = conditional_formats
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
          apm_query == o.apm_query &&
          audit_query == o.audit_query &&
          conditional_formats == o.conditional_formats &&
          event_query == o.event_query &&
          formulas == o.formulas &&
          log_query == o.log_query &&
          network_query == o.network_query &&
          process_query == o.process_query &&
          profile_metrics_query == o.profile_metrics_query &&
          q == o.q &&
          queries == o.queries &&
          response_format == o.response_format &&
          rum_query == o.rum_query &&
          security_query == o.security_query &&
          sort == o.sort &&
          style == o.style &&
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [apm_query, audit_query, conditional_formats, event_query, formulas, log_query, network_query, process_query, profile_metrics_query, q, queries, response_format, rum_query, security_query, sort, style, additional_properties].hash
    end
  end
end
