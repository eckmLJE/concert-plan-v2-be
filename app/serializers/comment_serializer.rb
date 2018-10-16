class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :plan_id, :content
end
