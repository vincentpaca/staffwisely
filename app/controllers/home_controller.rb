class HomeController < ApplicationController
  def index
  end

  def notify_me
    early_adaptor = EarlyAdaptor.new(params[:email])

    response = { :success => false }.to_json
    if early_adaptor.save
      response = { :success => true }.to_json   
    end

    respond_to do |format|
      format.json { render :json => response }
    end
  end
end
