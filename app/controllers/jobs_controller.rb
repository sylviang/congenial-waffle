class JobsController < ApplicationController
  def index
    @jobs = Job.page(params[:page]).per(25).order("created_at desc")
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params.require(:job).permit(:embed_code))
    if @job.save
      redirect_to root_path
    else
      render "new"
    end
  end

end
