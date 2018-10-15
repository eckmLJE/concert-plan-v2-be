class Api::V1::PlansController < ApplicationController

    before_action :authenticate_user, except: [:ping]

    def index
        render json: Plan.all
    end

    def create
        @plan = Plan.new(plan_params)
        if @plan.valid?
            @plan.users << current_user
            @plan.save
            render json: @plan, status: :accepted
        else
            render json: {errors: @plan.errors.full_messages}, status: :unprocessible_entity
        end
    end

    def update
        @plan = Plan.find(params[:id])
        @plan.users << current_user
        @plan.save
        render json: @plan, status: :accepted
    end

    def remove_user
        @user = current_user
        @plan = @user.plans.find(params[:id])
        @user.plans.delete(@plan)
        @user.save
        @new_plan = Plan.find(params[:id])
        render json: @new_plan, status: :accepted
    end

    def ping
        render json: {"pinged": "true"}
    end

    private

    def plan_params
        params.require(:plan).permit(:name, :tmid, :details, :creator_id, :imgUrl, :venue, :datetime)
    end

end
