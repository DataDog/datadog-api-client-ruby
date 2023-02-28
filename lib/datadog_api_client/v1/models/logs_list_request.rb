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
  # Object to send with the request to retrieve a list of logs from your Organization.
  class LogsListRequest
    include BaseGenericModel

    # Whether the object has unparsed attributes
    # @!visibility private
    attr_accessor :_unparsed

    # The log index on which the request is performed. For multi-index organizations,
    # the default is all live indexes. Historical indexes of rehydrated logs must be specified.
    attr_accessor :index

    # Number of logs return in the response.
    attr_reader :limit

    # The search query - following the log search syntax.
    attr_accessor :query

    # Time-ascending `asc` or time-descending `desc` results.
    attr_accessor :sort

    # Hash identifier of the first log to return in the list, available in a log `id` attribute.
    # This parameter is used for the pagination feature.
    #
    # **Note**: This parameter is ignored if the corresponding log
    # is out of the scope of the specified time window.
    attr_accessor :start_at

    # Timeframe to retrieve the log from.
    attr_reader :time

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'index' => :'index',
        :'limit' => :'limit',
        :'query' => :'query',
        :'sort' => :'sort',
        :'start_at' => :'startAt',
        :'time' => :'time'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'index' => :'String',
        :'limit' => :'Integer',
        :'query' => :'String',
        :'sort' => :'LogsSort',
        :'start_at' => :'String',
        :'time' => :'LogsListRequestTime'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::LogsListRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V1::LogsListRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'index')
        self.index = attributes[:'index']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.key?(:'start_at')
        self.start_at = attributes[:'start_at']
      end

      if attributes.key?(:'time')
        self.time = attributes[:'time']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if !@limit.nil? && @limit > 1000
      return false if @time.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param limit [Object] Object to be assigned
    # @!visibility private
    def limit=(limit)
      if !limit.nil? && limit > 1000
        fail ArgumentError, 'invalid value for "limit", must be smaller than or equal to 1000.'
      end
      @limit = limit
    end

    # Custom attribute writer method with validation
    # @param time [Object] Object to be assigned
    # @!visibility private
    def time=(time)
      if time.nil?
        fail ArgumentError, 'invalid value for "time", time cannot be nil.'
      end
      @time = time
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          index == o.index &&
          limit == o.limit &&
          query == o.query &&
          sort == o.sort &&
          start_at == o.start_at &&
          time == o.time
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [:index, :limit, :query, :sort, :start_at, :time].hash
    end
  end
end
