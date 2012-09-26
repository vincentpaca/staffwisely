class App::CompaniesController < AppController
  layout 'application', :only => :new

  def show

  end

  def new
    unless current_user.company
      @company = Company.new
    else
      redirect_to root_url
    end
  end

  def create
    @company = Company.new(params[:company])
    if @company.save
      current_user.attach_company(@company)
      redirect_to root_url
    else
      render :action => :new
    end
  end

end
