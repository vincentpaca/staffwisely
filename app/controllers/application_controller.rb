class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :initialize_mixpanel if Rails.env.production?

  protected
  
  def initialize_mixpanel
    @mixpanel = Mixpanel::Tracker.new("bb8da3a5fe5a4d964e0d2c2d5a8cf5b2", request.env, { :async => true, :persist => true })
  end
end
