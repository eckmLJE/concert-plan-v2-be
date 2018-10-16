class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_name, :plan_id, :content, :created_at
end
