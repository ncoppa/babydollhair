class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_nav
  def load_nav
    @nav_links = Content.all
  end
end
