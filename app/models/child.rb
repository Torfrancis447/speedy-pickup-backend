class Child < ApplicationRecord
  # belongs_to :user, foreign_key: 'parent_id'
  # belongs_to :user, foreign_key: 'teacher_id'


  validates_presence_of :teacher_id, :parent_id, :name, :image, :dob, :gender

end

