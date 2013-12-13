class PersonController < ApplicationController

  def index
    @persons = Person.all
  end

  def new

  end

end
