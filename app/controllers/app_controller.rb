class AppController < ApplicationController
  before_filter :authenticate_user!

  def show
    unless current_user.company
      redirect_to "/app/company/new", :notice => "You need to create a company" if !current_user.company
    else
      @employees = current_user.company.employees.paginate(:page => params[:page], :per_page => 6)
    end
  end

end
