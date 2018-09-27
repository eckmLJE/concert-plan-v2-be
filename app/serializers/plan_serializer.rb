class PlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :tmid, :venue, :datetime, :users
  has_many :users, serializer: UserSerializer
end
