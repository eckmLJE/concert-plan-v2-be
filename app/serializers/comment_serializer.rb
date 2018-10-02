class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :plan_id, :integer, :content
end
