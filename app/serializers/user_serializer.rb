class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :plans
  has_many :plans
end
