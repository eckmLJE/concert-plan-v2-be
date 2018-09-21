class PlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :datetime, :users
  has_many :users
end
