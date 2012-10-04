class App::ProjectsController < AppController
  def index
    @employee_projects = current_company.employee_projects
    @employer_projects = current_company.employer_projects
  end

  def show
    @project = Project.includes(:employees, :employer, { :comments => :user }).find(params[:id], :order => "comments.created_at DESC")
    @comment = Comment.new
  end

  def create
    @project = Project.new(params[:project])
  end
end
