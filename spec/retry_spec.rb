# require 'spec_helper'

describe 'logs_archive retry test' do
  before do
    DatadogAPIClient.configure { |c| c.retry_config["enableRetry"] = true }
    @api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
    @base_path = @api_instance.api_client.build_request_url('')
    @body = DatadogAPIClient::V2::LogsArchiveCreateRequest.new

    # Stub the sleep method to sleep for 0 seconds
    allow_any_instance_of(Kernel).to receive(:sleep).with(1).and_return(nil)
  end
  it 'should retry the action 3 times' do
    fixture = File.read('spec/fixtures/logs_archive_unknown_nested_oneof.json')
    stub_request(:post, "#{@base_path}api/v2/logs/config/archives")
      .to_return(
        {:body => fixture, :headers => [{"Content-Type": "application/json"}, {"X-Ratelimit-Reset" => "1"}], :status => 429},
        {:body => fixture, :headers => [{"Content-Type": "application/json"}, {"X-Ratelimit-Reset" => "1"}], :status => 429},
        {:body => fixture, :headers => [{"Content-Type": "application/json"}, {"X-Ratelimit-Reset" => "1"}], :status => 429},
        {:body => fixture, :headers => [{"Content-Type": "application/json"}], :status => 299}
      )

    data = @api_instance.create_logs_archive(@body)

    expect(webmock).to have_requested(:post, "#{@base_path}api/v2/logs/config/archives").times(3)
    expect(calculate_retry_interval.call()).to eq(1).times(3)

    expect(data).to be_a DatadogAPIClient::V2::LogsArchive
    expect(data.data.attributes._unparsed).to be true
    expect(data.data.attributes.destination.data[:type]).to eq "A non existent destination"
  end
end
