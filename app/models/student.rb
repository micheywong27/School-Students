class Student < ApplicationRecord
    validates :name, uniqueness: true
    validates :age, presence: true
    belongs_to :school 
end
