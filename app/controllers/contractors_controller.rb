class ContractorsController < ApplicationController
  def index
    @employees = Employee.available.paginate(:page => params[:page], :per_page => 10)
  end
end
