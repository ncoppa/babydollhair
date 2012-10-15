class StaticController < ApplicationController
  def index
    @my_id = params[:id]
    if  @my_id.blank?
      @content = Content.first
      
    else
      @content = Content.find_by_id(@my_id)
    end
  end
  
end