class ProjectsController < ApplicationController
  def index
    p current_user # for testing
    @projects = Project.all
    render :index
  end

  def show
    @project = Project.find_by(id: params[:id])
    render :show
  end

  def create
    if current_user
      @project = Project.create(
        category_id: params[:category_id],
        title: params[:title],
        description: params[:description],
        goal_amount: params[:goal_amount],
        start_date: params[:start_date],
        end_date: params[:end_date],
        user_id: current_user.id,
        image_url: params[:image_url]
      )
      render :show
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    @project = Project.find_by(id: params[:id])
    
    if @project.destroy
      p "PROJECT CONFIRM DESTROY"
      render json: {message: "Project has been deleted."}
    else
      render json: {Errors: @project.errors.full_messages}
      p "ERRORS in request"
    end
  end

  def update
    @project = Project.find_by(id: params[:id])
    @project.update(
      category_id: params[:category_id] || @project.category_id,
      title: params[:title] || @project.title,
      description: params[:description] || @project.description,
      goal_amount: params[:goal_amount] || @project.goal_amount,
      start_date: params[:start_date] || @project.start_date,
      end_date: params[:end_date] || @project.end_date,
      image_url: params[:image_url] || @project.image_url
    )
    render :show
  end
end
