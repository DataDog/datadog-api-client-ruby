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
  # Holds search results.
  class MonitorSearchResult
    include BaseGenericModel

    # Classification of the monitor.
    attr_accessor :classification

    # Object describing the creator of the shared element.
    attr_accessor :creator

    # ID of the monitor.
    attr_accessor :id

    # Latest timestamp the monitor triggered.
    attr_accessor :last_triggered_ts

    # Metrics used by the monitor.
    attr_accessor :metrics

    # The monitor name.
    attr_accessor :name

    # The notification triggered by the monitor.
    attr_accessor :notifications

    # The ID of the organization.
    attr_accessor :org_id

    # The monitor query.
    attr_accessor :query

    # The scope(s) to which the downtime applies, for example `host:app2`.
    # Provide multiple scopes as a comma-separated list, for example `env:dev,env:prod`.
    # The resulting downtime applies to sources that matches ALL provided scopes
    # (that is `env:dev AND env:prod`), NOT any of them.
    attr_accessor :scopes

    # The different states your monitor can be in.
    attr_accessor :status

    # Tags associated with the monitor.
    attr_accessor :tags

    # The type of the monitor. For more information about `type`, see the [monitor options](https://docs.datadoghq.com/monitors/guide/monitor_api_options/) docs.
    attr_accessor :type

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'classification' => :'classification',
        :'creator' => :'creator',
        :'id' => :'id',
        :'last_triggered_ts' => :'last_triggered_ts',
        :'metrics' => :'metrics',
        :'name' => :'name',
        :'notifications' => :'notifications',
        :'org_id' => :'org_id',
        :'query' => :'query',
        :'scopes' => :'scopes',
        :'status' => :'status',
        :'tags' => :'tags',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'classification' => :'String',
        :'creator' => :'Creator',
        :'id' => :'Integer',
        :'last_triggered_ts' => :'Integer',
        :'metrics' => :'Array<String>',
        :'name' => :'String',
        :'notifications' => :'Array<MonitorSearchResultNotification>',
        :'org_id' => :'Integer',
        :'query' => :'String',
        :'scopes' => :'Array<String>',
        :'status' => :'MonitorOverallStates',
        :'tags' => :'Array<String>',
        :'type' => :'MonitorType'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'last_triggered_ts',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::MonitorSearchResult` initialize method"
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

      if attributes.key?(:'classification')
        self.classification = attributes[:'classification']
      end

      if attributes.key?(:'creator')
        self.creator = attributes[:'creator']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'last_triggered_ts')
        self.last_triggered_ts = attributes[:'last_triggered_ts']
      end

      if attributes.key?(:'metrics')
        if (value = attributes[:'metrics']).is_a?(Array)
          self.metrics = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'notifications')
        if (value = attributes[:'notifications']).is_a?(Array)
          self.notifications = value
        end
      end

      if attributes.key?(:'org_id')
        self.org_id = attributes[:'org_id']
      end

      if attributes.key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.key?(:'scopes')
        if (value = attributes[:'scopes']).is_a?(Array)
          self.scopes = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          classification == o.classification &&
          creator == o.creator &&
          id == o.id &&
          last_triggered_ts == o.last_triggered_ts &&
          metrics == o.metrics &&
          name == o.name &&
          notifications == o.notifications &&
          org_id == o.org_id &&
          query == o.query &&
          scopes == o.scopes &&
          status == o.status &&
          tags == o.tags &&
          type == o.type
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [classification, creator, id, last_triggered_ts, metrics, name, notifications, org_id, query, scopes, status, tags, type].hash
    end
  end
end
