class ContractorsController < ApplicationController
  def index
    employees = Employee.available

    if params[:category]
      employees = employees.where("category = ?", params[:category])
    end

    if params[:q]
      employees = employees.where("position like ?", "%#{params[:q]}%")
    end

    @employees = employees.order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
  end

  def send_proposal
    employee = Company.find(params[:employee])
    employer = Company.find(params[:employer])
    staff = Employee.find(params[:staff])
    
    title = params[:title]
    details = params[:details]

    project = Project.new(:employer => employer, :employee => employee, :title => title, :description => details)

    if project.save
      Employment.save_employment(staff, project.id)
      flash[:notice] = "Project successfully created."
      render :js => %(window.location.pathname='/app/projects/#{project.id}')
    else
      flash[:error] = "Something went wrong while saving your project, please try again."
      render :js => %(window.location.pathname='/app/contractors')
    end
  end

end
