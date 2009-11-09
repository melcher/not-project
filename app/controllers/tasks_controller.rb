class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end
  def home

  end

  def show
    @task = Task.find(params[:id])
    respond_to do |format|
      format.yaml {}
      format.xml {}
      format.html {}
    end
  end

  def create
    @task = Task.new(params[:task])
    if @task.save
      flash[:message] = "Task created"
      index
      render :action => :index
    else
      render :action => :new
    end
  end
end
