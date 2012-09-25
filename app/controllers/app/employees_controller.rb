class App::EmployeesController < AppController

  def index
    redirect_to app_path
  end
  
  def new
    @employee = Employee.new
    @categories = Category.all
    @continents = Continent.all
  end

  def create
    @employee = Employee.new(params[:employee])
    @employee.added_by = current_user
    @employee.company = current_user.company

    if @employee.save
      redirect_to app_path, :notice => "Employee saved!"
    else
      render :action => "new"
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    @categories = Category.all
    @continents = Continent.all
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update_attributes(params[:employee])
      redirect_to app_path, :notice => "Employee updated!"
    else
      render :action => "edit"
    end
  end

  def update_availability
    @employee = Employee.find(params[:employee_id])
    availability = params[:available].eql?("true") ? true : false

    respond_to do |format|
      if @employee.update_attributes(:available => availability)
        format.json{ render :json => { :success => true } }
      else
        format.json{ render :json => { :success => false } }
      end
    end
  end

end
