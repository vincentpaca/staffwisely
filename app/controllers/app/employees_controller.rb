class App::EmployeesController < AppController

  def index
    redirect_to app_path
  end
  
  def new
    @employee = Employee.new
  end

end
