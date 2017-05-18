module Bxslider
  class Engine < ::Rails::Engine
    initializer 'bxslider.assets.precompile' do |app|
      app.config.assets.precompile += %w(controls.png bx_loader.gif)
      app.config.assets.precompile += %w(jquery.bxslider.js jquery.easing.1.3.js jquery.fitvids.js jquery.min.js)
      app.config.assets.precompile += %w(jquery.bxslider.css)
    end
  end
end
