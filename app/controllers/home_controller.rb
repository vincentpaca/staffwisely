class HomeController < ApplicationController
  layout 'teaser', :only => :welcome

  def index
  end

  def welcome
  end

  def notify_me
    early_adaptor = EarlyAdaptor.new(:email => params[:email])

    response = { :success => false }.to_json
    if early_adaptor.save
      response = { :success => true }.to_json   
    end

    respond_to do |format|
      format.json { render :json => response }
    end
  end
end
