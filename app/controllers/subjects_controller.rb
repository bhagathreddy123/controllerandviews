class SubjectsController < ApplicationController
  def index
  	@subjects = Subject.all
  end

  def new
  	@subject = Subject.new
  end

  def create
  	@subject = Subject.new(subject_params)
    # Save the object
    if @subject.save
      # If save succeeds, redirect to the index action
      flash[:notice] = 'Subject created'
      redirect_to(subjects_path)
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
  	@subject = Subject.find(params[:id])
  end
  
  def update
    @subject = Subject.find(params[:id])
    if @subject.update(subject_params)
      flash[:notice] = 'Subject updated'
      redirect_to(subject_path(@subject))
    else
      render('edit')
    end
  end

  def show
  	@subject = Subject.find(params[:id])
  end

  def destroy
  	@subject = Subject.find(params[:id])
  	if @subject.destroy
  		redirect_to subjects_path
  	end
  end

  private

    def subject_params
      params.require(:subject).permit(:name, :visible, :position)
    end
end
