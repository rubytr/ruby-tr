class CompaniesController < ApplicationController
  def index
    @companies = Company.published
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      flash[:notice] = 'Firmanız site yöneticisi tarafından onaylandıktan sonra gözükecektir.'
      redirect_to(companies_path)
    else
      render(:new)
    end
  end

  def company_params
    params.require(:company).permit(:title, :sector, :url, :github, :twitter, :city,
                                    :humanizer_answer, :humanizer_question_id)
  end
end
