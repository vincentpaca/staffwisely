class App::ProjectsController < AppController
  def index
    @pending_projects = current_company.employee_projects.merge(current_company.employer_projects)
  end

  def show
    @project = Project.includes(:employees, :employer, { :comments => :user }).find(params[:id], :order => "comments.created_at DESC")
    @comment = Comment.new
  end

  def create
    @project = Project.new(params[:project])
  end
end
