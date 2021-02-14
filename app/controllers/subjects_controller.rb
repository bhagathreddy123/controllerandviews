class SubjectsController < ApplicationController
  def index
  	@subjects = Subject.all
  end

  def new
  end

  def edit
  end

  def show
  	@subject = Subject.find(1)
  end
end
