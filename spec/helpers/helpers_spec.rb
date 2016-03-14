require 'spec_helper.rb'

describe 'AssetsAsync::Helpers' do
  describe "#include_assets_async" do
    subject { helper.include_assets_async }

    it "should minified" do
      should_not match(/\n/)
    end
  end
end
