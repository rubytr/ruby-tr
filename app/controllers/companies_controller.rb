class CompaniesController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def index
    @companies = Company.published.order(:title)
  end

  def new
    @company = Company.new
  end

  def create
    if current_user.companies.create(company_params)
      flash[:notice] = 'Firmanız site yöneticisi tarafından onaylandıktan sonra gözükecektir.'
      redirect_to(companies_path)
    else
      render(:new)
    end
  end

  private

  def company_params
    params.require(:company).permit(:title, :sector, :url, :github, :twitter, :city,
                                    :humanizer_answer, :humanizer_question_id)
  end

end
