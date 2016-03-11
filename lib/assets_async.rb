require 'assets_async/engine'
require 'assets_async/helpers'

module AssetsAsync
end

ActiveSupport.on_load(:action_view) do
  ActionView::Base.send :include, AssetsAsync::Helpers
end
