class App::CompaniesController < AppController

  def show

  end

  def new
    @company = Company.new
  end

end
