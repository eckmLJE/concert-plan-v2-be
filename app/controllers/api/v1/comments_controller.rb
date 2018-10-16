require 'pry'

class Api::V1::CommentsController < ApplicationController
    
    before_action :authenticate_user

    def index
        render json: Comment.all
    end

    def create
        @comment = Comment.new(comment_params)
        if @comment.valid?
            @comment.save
            render json: @comment, status: :accepted
        else
            binding.pry
            render json: {errors: @comment.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def comment_params
        params.require(:comment).permit(:content, :plan_id, :user_id)
    end

end
