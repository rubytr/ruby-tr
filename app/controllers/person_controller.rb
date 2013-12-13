class PersonController < ApplicationController

  def index
    @persons = Person.all
  end

end
