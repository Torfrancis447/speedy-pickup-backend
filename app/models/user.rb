class User < ApplicationRecord
    has_many :children, foreign_key: 'parent_id'
    has_many :children, foreign_key: 'teacher_id'
    belongs_to :school, optional: true
    has_many :cars
end
