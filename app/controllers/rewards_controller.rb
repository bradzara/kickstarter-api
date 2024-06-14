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
    date = DateTime.strptime(params[:delivery_date], "%m.%d.%Y")
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
    new_date = DateTime.strptime(params[:delivery_date], "%m.%d.%Y")

    @reward = Reward.find_by(id: params[:id])
    @reward.project_id = params[:project_id] || @reward.project_id
    @reward.description = params[:description] || @reward.description
    @reward.amount = params[:amount] || @reward.amount
    @reward.limit = params[:limit] || @reward.limit
    @reward.delivery_date = new_date || @reward.delivery_date
   
    
    if @reward.save
      render template: "rewards/show"
    else
      render json: {ERRORS: reward.errors.full_messages}
    end 
  end

  def destroy
    @reward = Reward.find_by(id: 25)
    @reward.delete
    
    if @reward.delete
      render json: {message: "Reward Removed"}
    else
      render json: {ERRORS: reward.errors.full_messages}
    end
  end

end

