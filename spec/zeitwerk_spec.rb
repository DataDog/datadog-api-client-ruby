require 'spec_helper'

describe 'zeitwerk loader' do
    it "should load all files" do
        expect { Zeitwerk::Loader.eager_load_all }.not_to raise_error
    end
end
