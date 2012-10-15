class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_nav
  def load_nav
    if Content.count > 0
      @nav_links = Content.all      
    end
  end
end
