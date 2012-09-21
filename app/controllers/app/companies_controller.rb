class App::CompaniesController < AppController
  layout 'application', :only => :new

  def show

  end

  def new
    @company = Company.new
  end

end
