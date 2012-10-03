class HomeController < ApplicationController
  layout 'teaser', :only => :welcome

  def index
    redirect_to "/app" if current_user
  end

  def welcome
  end

  def how_it_works
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

  def faq
    @hiring_qs = Question.where(:faq_type => "hiring")
    @listing_qs = Question.where(:faq_type => "listing")
  end
end
