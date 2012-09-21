class App::CompaniesController < ApplicationController

  def show

  end

  def new
    @company = Company.new
  end

end
