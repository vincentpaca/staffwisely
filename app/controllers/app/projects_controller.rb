class App::ProjectsController < AppController
  def index
  end

  def show
  end

  def create
    @project = Project.new(params[:project])
  end
end
