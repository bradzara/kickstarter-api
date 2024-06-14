class RewardsController < ApplicationController

  def index
    @rewards = Reward.all
    render template: "rewards/index"
  end

  def show
    @reward = Reward.find_by(id: 3)
  end

  def create
    render json: {message: "hello there"}
  end

  def update
    render json: {message: "hello there"}
  end

  def destroy
    render json: {message: "hello there"}
  end

end
