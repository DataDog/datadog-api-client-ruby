# Define library version.

require 'rbconfig'

module DatadogAPIClient
  VERSION = '1.5.0'

  USER_AGENT = format(
    'datadog-api-client-ruby/%<version>s (ruby %<ruver>s; os %<os>s; arch %<arch>s)',
    version: VERSION,
    ruver: RUBY_VERSION,
    os: RbConfig::CONFIG['host_os'].downcase,
    arch: RbConfig::CONFIG['host_cpu']
  )
end
