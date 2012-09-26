class App::EmployeesController < AppController
  before_filter :init_select_items

  def index
    redirect_to app_path
  end
  
  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(params[:employee])
    @employee.added_by = current_user
    @employee.company = current_user.company

    if @employee.save
      redirect_to app_path, :notice => "Employee saved!"
    else
      render :action => :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update_attributes(params[:employee])
      redirect_to app_path, :notice => "Employee updated!"
    else
      render :action => :edit
    end
  end

  def update_availability
    @employee = Employee.find(params[:employee_id])

    respond_to do |format|
      if @employee.update_attributes(:availability => params[:availability])
        format.json{ render :json => { :success => true } }
      else
        format.json{ render :json => { :success => false } }
      end
    end
  end

  protected

  def init_select_items
    @continents = Continent.all
    @categories = Category.all
  end

end
