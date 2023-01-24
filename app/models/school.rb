class School < ApplicationRecord
    has_many :children
    has_many :parents, through: :children
end
