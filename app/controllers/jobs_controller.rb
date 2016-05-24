class JobsController < ApplicationController

  def index
    @jobs = Job.where(published: true)
  end

  def new
    @job = Job.new
  end

  def show
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:notice] = "İlanınız site admini onayladıktan sonra gözükecektir."
      redirect_to(jobs_path)
    else
      render(:new)
    end
  end

  def job_params
    params.require(:job).permit(:title, :company, :description, :link, :location, :humanizer_answer, :humanizer_question_id)
  end

end
