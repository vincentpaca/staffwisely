class ContractorsController < ApplicationController
  respond_to :json, :only => :send_message

  def index
    employees = Employee.available

    if params[:category]
      employees = employees.where("category = ?", params[:category])
    end

    if params[:q]
      employees = employees.where("position like ?", "%#{params[:q]}%")
    end

    @employees = employees.paginate(:page => params[:page], :per_page => 10)
  end

  def send_message
    if current_user
      employee = Employee.find(params[:employee])
      employer = User.find(params[:employer])
      message = params[:message]

      StaffMailer.inquiry(employer, employee, current_user, message).deliver

      response = { :success => true }.to_json
      respond_with response, :location => nil
    else
      response = { :success => false }.to_json
      respond_with response, :location => nil
    end
  end
end
