class ApplicationController < ActionController::Base
  before_action :get_visible_links		
  protect_from_forgery with: :exception

  protected
  	def get_visible_links
  		@visible_links = Link.all.select{|l| l.visibility}
  	end
end
