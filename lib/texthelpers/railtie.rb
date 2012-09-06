require 'texthelpers/view_helpers'
module Texthelpers
  class Railtie < Rails::Railtie
    initializer "texthelpers.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end