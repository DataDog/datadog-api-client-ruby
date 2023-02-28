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
  # Response Object that includes your query and the list of metrics retrieved.
  class MetricsQueryResponse
    include BaseGenericModel

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

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
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

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:error, :from_date, :group_by, :message, :query, :res_type, :series, :status, :to_date].hash
    end
  end
end
