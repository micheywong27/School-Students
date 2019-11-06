class School < ApplicationRecord
    validates :name, uniqueness: true
    validates :address, presence: true 
    has_many :students
end
