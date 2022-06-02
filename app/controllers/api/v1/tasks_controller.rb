class Api::V1::TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]

  def index
    tasks = Task.all
    render json: tasks
  end
  
  def show
    render json: @task
  end

  def create
    task = Task.new(post_params)
    if task.save
      render json: task, status: :created
    end
  end

  def update
    if @task.update(post_params)
      render json: @task
    end
  end

  def destroy
    @task.destroy
    render status: :no_content
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def post_params
      params.require(:task).permit(:title, :status, :content, :man_hour, :deadline_at)
    end
end