require "bxslider/version"
module Bxslider
  class Engine < ::Rails::Engine
    initializer 'bxslider.assets.precompile' do |app|
      app.config.assets.precompile += %w(controls.png bx_loader.gif)
    end
  end
end
