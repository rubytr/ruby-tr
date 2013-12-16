class PersonController < ApplicationController

  def index
    @persons = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    @person.save
    redirect_to people_path
  end

  private

  def person_params
    params.require(:person).permit(:name, :email, :web, :github, :twitter)
  end

end
