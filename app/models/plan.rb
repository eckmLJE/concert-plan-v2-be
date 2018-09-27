class Plan < ApplicationRecord
    validates :tmid, uniqueness: true
    has_and_belongs_to_many :users
end
