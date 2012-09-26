class AppController < ApplicationController
  before_filter :disallow_access, :authenticate_user!

  def show
    unless current_user.company
      redirect_to "/app/company/new", :notice => "You need to create a company" if !current_user.company
    else
      @employees = current_user.company.employees.paginate(:page => params[:page], :per_page => 6)
    end
  end

  protected

  def disallow_access
    redirect_to root_url if Rails.env.production?
  end
end
