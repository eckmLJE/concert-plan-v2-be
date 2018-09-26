class Api::V1::PlansController < ApplicationController

    before_action :authenticate_user

    def index
        render json: Plan.all
    end

    def create
        @plan = Plan.new(plan_params)
        if @plan.valid?
            @plan.save
            render json: @plan, status: :accepted
        else
            render json: {errors: @user.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def plan_params
        params.require(:plan).permit(:name, :tmid, :details, :datetime)
    end

end
