class CompaniesController < ApplicationController

  def index
    @companies = Company.all.order(:name)
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.save ? redirect_to(companies_path) : render(:new)
  end

  private

  def company_params
    params.require(:company).permit(:name, :web, :city, :humanizer_answer, :humanizer_question_id)
  end 
end
