class App::ProjectsController < AppController
  before_filter :companies_involved, :only => [:show]

  def index
    @pending_projects = current_company.pending_projects
    @on_going_projects = current_company.on_going_projects
  end

  def show
    @project = Project.includes(:employees, :employer, { :comments => :user }).find(params[:id], :order => "comments.created_at DESC")
    @comment = Comment.new
  end

  def create
    @project = Project.new(params[:project])
  end

  protected

  def companies_involved
    @project = Project.find(params[:id])
    unless current_company.eql?(@project.employer) || current_company.eql?(@project.employee)
      flash[:alert] = "You do not have enough permissions to view this project"
      redirect_to "/app"
    end
  end
end
