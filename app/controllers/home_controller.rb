class HomeController < ApplicationController
  def index
  end

  def notify_me
    response = { :success => true }.to_json
    respond_to do |format|
      format.json { render :json => response }
    end
  end
end
