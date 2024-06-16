class DonationsController < ApplicationController

  def index
    @donations = Donation.all
    render :index
  end

  def show
    @donation = Donation.find_by(id: params[:id])
  end

  def create
    if current_user
      project_id = params[:project_id]

      @donation = Donation.new(amount: params[:amount], message: params[:message], user_id: current_user.id, project_id: project_id)
      
      if @donation.valid?
        proj = Project.find_by(id: project_id)
        
        if proj
          @donation.save
          proj.amount_raised += @donation.amount
          proj.save
          render :show
        else
          render json: {errors: "invalid project or user id."}
        end

      else
        render json: {errors: @donation.errors}
      end

    else
      render json: {}, status: :unauthorized
    end
  end

end
