class ContractorsController < ApplicationController
  def index
    employees = Employee.available

    if params[:category]
      employees = employees.where("category = ?", params[:category])
    end

    @employees = employees.paginate(:page => params[:page], :per_page => 10)
  end
end
