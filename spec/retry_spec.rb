require 'spec_helper'

describe 'logs_archive retry test' do
  before do
    DatadogAPIClient.configure do |c|
      c.enable_retry = true
      c.backoff_base = 2
    end
    @api_instance = DatadogAPIClient::V2::LogsArchivesAPI.new
    @base_path = @api_instance.api_client.build_request_url('')
    @body = DatadogAPIClient::V2::LogsArchiveCreateRequest.new
    allow_any_instance_of(DatadogAPIClient::APIClient).to receive(:sleep)
  end
  it 'should retry 3 times and sleep for the value of X-Ratelimit-Reset' do
    fixture = File.read('spec/fixtures/logs_archive_unknown_nested_oneof.json')
    stub_request(:post, "#{@base_path}api/v2/logs/config/archives")
      .to_return(
        {:body => fixture, :headers => {"Content-Type": "application/json", "X-Ratelimit-Reset" => "1"}, :status => 429},
        {:body => fixture, :headers => {"Content-Type": "application/json", "X-Ratelimit-Reset" => "1"}, :status => 429},
        {:body => fixture, :headers => {"Content-Type": "application/json", "X-Ratelimit-Reset" => "1"}, :status => 429},
        {:body => fixture, :headers => {"Content-Type": "application/json"}, :status => 299}
      )
    data = @api_instance.create_logs_archive(@body)
    expect(@api_instance::api_client).to have_received(:sleep).exactly(3).times.with(1)
    expect(WebMock).to have_requested(:post, "#{@base_path}api/v2/logs/config/archives").times(4)
  end

  it 'should retry 3 times and sleep for 2,4,8 seconds' do
    fixture = File.read('spec/fixtures/logs_archive_unknown_nested_oneof.json')
    stub_request(:post, "#{@base_path}api/v2/logs/config/archives")
      .to_return(
        {:body => fixture, :headers => {"Content-Type": "application/json"}, :status => 500},
        {:body => fixture, :headers => {"Content-Type": "application/json"}, :status => 500},
        {:body => fixture, :headers => {"Content-Type": "application/json"}, :status => 500},
        {:body => fixture, :headers => {"Content-Type": "application/json"}, :status => 299}
      )

    data = @api_instance.create_logs_archive(@body)
    expect(@api_instance::api_client).to have_received(:sleep).exactly(1).times.with(2)
    expect(@api_instance::api_client).to have_received(:sleep).exactly(1).times.with(4)
    expect(@api_instance::api_client).to have_received(:sleep).exactly(1).times.with(8)
    expect(WebMock).to have_requested(:post, "#{@base_path}api/v2/logs/config/archives").times(4)
  end
end
