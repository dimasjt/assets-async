require 'spec_helper.rb'

describe 'AssetsAsync::Helpers' do
  describe "#include_assets_async" do
    subject { helper.include_assets_async }

    it "should minified async js" do
      should_not match(/\n/)
    end
  end

  describe "#load_css" do
    css = 'application.css'
    subject { helper.load_css(css) }

    it "should have loadCSSAsync function" do
      should match('loadCSSAsync')
    end

    it "should have name with included as param" do
      should match(css)
    end
  end

  describe "#load_js" do
    js = 'application.js'
    subject { helper.load_js(js) }

    it "should have loadJSAsync function" do
      should match('loadJSAsync')
    end

    it "should have name with included as param" do
      should match(js)
    end
  end
end
