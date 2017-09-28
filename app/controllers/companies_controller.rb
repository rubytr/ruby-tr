class CompaniesController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def index
    @companies = Company.published.order(:title)
  end

  def new
    @company = Company.new
  end

  def create
    params[:company][:user_id] = current_user.id
    @company = Company.new(company_params)
    if @company.save
      flash[:notice] = 'Firmanız site yöneticisi tarafından onaylandıktan sonra gözükecektir.'
      redirect_to(companies_path)
    else
      render(:new)
    end
  end

  private

  def company_params
    params.require(:company).permit(:user_id, :title, :sector, :url, :github, :twitter, :city,
                                    :humanizer_answer, :humanizer_question_id)
  end

end
