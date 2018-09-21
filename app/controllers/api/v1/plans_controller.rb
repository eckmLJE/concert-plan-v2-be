class Api::V1::PlansController < ApplicationController

    def index
        render json: Plan.all
    end

end
