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
  # Details of the top level pipeline, build, or workflow of your CI.
  class CIAppPipelineEventPipeline
    include BaseGenericModel

    # Time when the pipeline run finished. The time format must be RFC3339.
    attr_reader :_end

    # Contains information of the CI error.
    attr_accessor :error

    # If pipelines are triggered due to actions to a Git repository, then all payloads must contain this.
    # Note that either `tag` or `branch` has to be provided, but not both.
    attr_accessor :git

    # Whether or not the pipeline was triggered manually by the user.
    attr_accessor :is_manual

    # Whether or not the pipeline was resumed after being blocked.
    attr_accessor :is_resumed

    # Used to distinguish between pipelines, stages, jobs, and steps.
    attr_reader :level

    # A list of user-defined metrics. The metrics must follow the `key:value` pattern and the value must be numeric.
    attr_accessor :metrics

    # Name of the pipeline. All pipeline runs for the builds should have the same name.
    attr_reader :name

    # Contains information of the host running the pipeline, stage, job, or step.
    attr_accessor :node

    # A map of key-value parameters or environment variables that were defined for the pipeline.
    attr_accessor :parameters

    # If the pipeline is triggered as child of another pipeline, this should contain the details of the parent pipeline.
    attr_accessor :parent_pipeline

    # Whether or not the pipeline was a partial retry of a previous attempt. A partial retry is one
    # which only runs a subset of the original jobs.
    attr_reader :partial_retry

    # Any ID used in the provider to identify the pipeline run even if it is not unique across retries.
    # If the `pipeline_id` is unique, then both `unique_id` and `pipeline_id` can be set to the same value.
    attr_accessor :pipeline_id

    # If the pipeline is a retry, this should contain the details of the previous attempt.
    attr_accessor :previous_attempt

    # The queue time in milliseconds, if applicable.
    attr_reader :queue_time

    # Time when the pipeline run started (it should not include any queue time). The time format must be RFC3339.
    attr_reader :start

    # The final status of the pipeline.
    attr_reader :status

    # A list of user-defined tags. The tags must follow the `key:value` pattern.
    attr_accessor :tags

    # UUID of the pipeline run. The ID has to be unique across retries and pipelines,
    # including partial retries.
    attr_reader :unique_id

    # The URL to look at the pipeline in the CI provider UI.
    attr_reader :url

    # Used to specify user-related information when the payload does not have Git information.
    # For example, if Git information is missing for manually triggered pipelines, this field can be used instead.
    attr_accessor :user

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'_end' => :'end',
        :'error' => :'error',
        :'git' => :'git',
        :'is_manual' => :'is_manual',
        :'is_resumed' => :'is_resumed',
        :'level' => :'level',
        :'metrics' => :'metrics',
        :'name' => :'name',
        :'node' => :'node',
        :'parameters' => :'parameters',
        :'parent_pipeline' => :'parent_pipeline',
        :'partial_retry' => :'partial_retry',
        :'pipeline_id' => :'pipeline_id',
        :'previous_attempt' => :'previous_attempt',
        :'queue_time' => :'queue_time',
        :'start' => :'start',
        :'status' => :'status',
        :'tags' => :'tags',
        :'unique_id' => :'unique_id',
        :'url' => :'url',
        :'user' => :'user'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'_end' => :'Time',
        :'error' => :'CIAppCIError',
        :'git' => :'CIAppGitInfo',
        :'is_manual' => :'Boolean',
        :'is_resumed' => :'Boolean',
        :'level' => :'CIAppPipelineEventPipelineLevel',
        :'metrics' => :'Array<String>',
        :'name' => :'String',
        :'node' => :'CIAppHostInfo',
        :'parameters' => :'Hash<String, String>',
        :'parent_pipeline' => :'CIAppPipelineEventParentPipeline',
        :'partial_retry' => :'Boolean',
        :'pipeline_id' => :'String',
        :'previous_attempt' => :'CIAppPipelineEventPreviousPipeline',
        :'queue_time' => :'Integer',
        :'start' => :'Time',
        :'status' => :'CIAppPipelineEventPipelineStatus',
        :'tags' => :'Array<String>',
        :'unique_id' => :'String',
        :'url' => :'String',
        :'user' => :'CIAppUserInfo'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'error',
        :'git',
        :'is_manual',
        :'is_resumed',
        :'metrics',
        :'node',
        :'parameters',
        :'parent_pipeline',
        :'previous_attempt',
        :'queue_time',
        :'tags',
        :'user',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::CIAppPipelineEventPipeline` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::CIAppPipelineEventPipeline`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'_end')
        self._end = attributes[:'_end']
      end

      if attributes.key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.key?(:'git')
        self.git = attributes[:'git']
      end

      if attributes.key?(:'is_manual')
        self.is_manual = attributes[:'is_manual']
      end

      if attributes.key?(:'is_resumed')
        self.is_resumed = attributes[:'is_resumed']
      end

      if attributes.key?(:'level')
        self.level = attributes[:'level']
      end

      if attributes.key?(:'metrics')
        if (value = attributes[:'metrics']).is_a?(Array)
          self.metrics = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'node')
        self.node = attributes[:'node']
      end

      if attributes.key?(:'parameters')
        self.parameters = attributes[:'parameters']
      end

      if attributes.key?(:'parent_pipeline')
        self.parent_pipeline = attributes[:'parent_pipeline']
      end

      if attributes.key?(:'partial_retry')
        self.partial_retry = attributes[:'partial_retry']
      end

      if attributes.key?(:'pipeline_id')
        self.pipeline_id = attributes[:'pipeline_id']
      end

      if attributes.key?(:'previous_attempt')
        self.previous_attempt = attributes[:'previous_attempt']
      end

      if attributes.key?(:'queue_time')
        self.queue_time = attributes[:'queue_time']
      end

      if attributes.key?(:'start')
        self.start = attributes[:'start']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'unique_id')
        self.unique_id = attributes[:'unique_id']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'user')
        self.user = attributes[:'user']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @_end.nil?
      return false if @level.nil?
      return false if @name.nil?
      return false if @partial_retry.nil?
      return false if !@queue_time.nil? && @queue_time < 0
      return false if @start.nil?
      return false if @status.nil?
      return false if @unique_id.nil?
      return false if @url.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param _end [Object] Object to be assigned
    # @!visibility private
    def _end=(_end)
      if _end.nil?
        fail ArgumentError, 'invalid value for "_end", _end cannot be nil.'
      end
      @_end = _end
    end

    # Custom attribute writer method with validation
    # @param level [Object] Object to be assigned
    # @!visibility private
    def level=(level)
      if level.nil?
        fail ArgumentError, 'invalid value for "level", level cannot be nil.'
      end
      @level = level
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param partial_retry [Object] Object to be assigned
    # @!visibility private
    def partial_retry=(partial_retry)
      if partial_retry.nil?
        fail ArgumentError, 'invalid value for "partial_retry", partial_retry cannot be nil.'
      end
      @partial_retry = partial_retry
    end

    # Custom attribute writer method with validation
    # @param queue_time [Object] Object to be assigned
    # @!visibility private
    def queue_time=(queue_time)
      if !queue_time.nil? && queue_time < 0
        fail ArgumentError, 'invalid value for "queue_time", must be greater than or equal to 0.'
      end
      @queue_time = queue_time
    end

    # Custom attribute writer method with validation
    # @param start [Object] Object to be assigned
    # @!visibility private
    def start=(start)
      if start.nil?
        fail ArgumentError, 'invalid value for "start", start cannot be nil.'
      end
      @start = start
    end

    # Custom attribute writer method with validation
    # @param status [Object] Object to be assigned
    # @!visibility private
    def status=(status)
      if status.nil?
        fail ArgumentError, 'invalid value for "status", status cannot be nil.'
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param unique_id [Object] Object to be assigned
    # @!visibility private
    def unique_id=(unique_id)
      if unique_id.nil?
        fail ArgumentError, 'invalid value for "unique_id", unique_id cannot be nil.'
      end
      @unique_id = unique_id
    end

    # Custom attribute writer method with validation
    # @param url [Object] Object to be assigned
    # @!visibility private
    def url=(url)
      if url.nil?
        fail ArgumentError, 'invalid value for "url", url cannot be nil.'
      end
      @url = url
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _end == o._end &&
          error == o.error &&
          git == o.git &&
          is_manual == o.is_manual &&
          is_resumed == o.is_resumed &&
          level == o.level &&
          metrics == o.metrics &&
          name == o.name &&
          node == o.node &&
          parameters == o.parameters &&
          parent_pipeline == o.parent_pipeline &&
          partial_retry == o.partial_retry &&
          pipeline_id == o.pipeline_id &&
          previous_attempt == o.previous_attempt &&
          queue_time == o.queue_time &&
          start == o.start &&
          status == o.status &&
          tags == o.tags &&
          unique_id == o.unique_id &&
          url == o.url &&
          user == o.user
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [_end, error, git, is_manual, is_resumed, level, metrics, name, node, parameters, parent_pipeline, partial_retry, pipeline_id, previous_attempt, queue_time, start, status, tags, unique_id, url, user].hash
    end
  end
end
