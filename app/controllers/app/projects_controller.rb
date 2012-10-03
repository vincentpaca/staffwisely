class App::ProjectsController < AppController
  def index
    @pending_projects = current_company.employee_projects
    @pending_projects << current_company.employer_projects
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(params[:project])
  end
end
