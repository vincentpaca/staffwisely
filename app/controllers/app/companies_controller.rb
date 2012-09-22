class App::CompaniesController < AppController
  layout 'application', :only => :new

  def show

  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(params[:company])
    if @company.save
      current_user.attach_company(@company)
      redirect_to root_url
    else
    end
  end

end
