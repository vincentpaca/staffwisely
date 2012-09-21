class AppController < ApplicationController
  layout 'app'
  before_filter :disallow_access, :authenticate_user!

  def show
  end

  protected

  def disallow_access
    redirect_to root_url if Rails.env.production?
  end
end
