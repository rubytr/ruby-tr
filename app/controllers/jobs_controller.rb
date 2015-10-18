class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  def show
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.new(job_params)
    @job.save ? redirect_to(jobs_path) : render(:new)
  end

  def job_params
    params.require(:job).permit(:title, :company, :description, :link, :location, :humanizer_answer, :humanizer_question_id)
  end

end
