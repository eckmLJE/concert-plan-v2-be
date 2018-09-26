class PlanSerializer < ActiveModel::Serializer
  attributes :id, :name, :details, :tmid, :datetime, :users
  has_many :users
end
