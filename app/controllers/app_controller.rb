class AppController < ApplicationController
  before_filter :disallow_access, :authenticate_user!

  def show
    @employees = current_user.company.employees.paginate(:page => params[:page], :per_page => 6)
  end

  protected

  def disallow_access
    redirect_to root_url if Rails.env.production?
  end
end
