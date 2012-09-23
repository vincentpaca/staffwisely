class AppController < ApplicationController
  before_filter :disallow_access, :authenticate_user!

  def show
    @employees = current_user.company.employees
    puts @employees
  end

  protected

  def disallow_access
    redirect_to root_url if Rails.env.production?
  end
end
