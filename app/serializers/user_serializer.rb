class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :plans
  has_many :plans
end
