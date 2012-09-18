class AppController < ApplicationController
  before_filter :disallow_access

  def show
  end

  protected
  def disallow_access
    redirect_to root_url
  end
end
