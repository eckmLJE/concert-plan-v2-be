class PlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :tmid, :imgUrl, :venue, :creator_id, :datetime, :users
  has_many :users, serializer: UserSerializer
end
