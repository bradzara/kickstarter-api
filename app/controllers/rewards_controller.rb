class RewardsController < ApplicationController

  def index
    @rewards = Reward.all
    render template: "rewards/index"
  end

  def show
    @reward = Reward.find_by(id: params[:id])
    render template: "rewards/show"
  end

  def create
    date = DateTime.parse(params[:delivery_date])
    @reward = Reward.new()
    @reward.project_id = params[:project_id]
    @reward.description = params[:description]
    @reward.amount = params[:amount]
    @reward.limit = params[:limit]
    @reward.delivery_date = date

    if @reward.save
      render template: "rewards/show"
    else
      render json: {ERRORS: reward.errors.full_messages}
    end
  end

  def update
    render json: {message: "hello there"}
  end

  def destroy
    render json: {message: "hello there"}
  end

end
