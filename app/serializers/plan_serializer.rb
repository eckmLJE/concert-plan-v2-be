class PlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :tmid, :imgUrl, :venue, :creator_id, :datetime, :users, :comments
  has_many :users, serializer: UserSerializer
  has_many :comments, serializer: CommentSerializer
end
