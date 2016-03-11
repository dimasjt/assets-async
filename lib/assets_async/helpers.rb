require 'uglifier'

module AssetsAsync
  module Helpers
    def include_assets_async
      content_tag :script do
        async_js = File.read(File.join(File.expand_path('../..', __FILE__), 'assets_async/assets_async.js'))
        raw Uglifier.compile(async_js)
      end
    end

    def load_css name
      content_tag :script do
        raw "loadCSSAsync('#{asset_path(name)}', '#{name.split('/').last}')"
      end
    end
  end
end
