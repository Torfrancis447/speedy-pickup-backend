class User < ApplicationRecord
    # has_many :children, foreign_key: 'parent_id' 
    # has_many :children, foreign_key: 'teacher_id'
    belongs_to :school, optional: true
    has_many :cars, dependent: :destroy
    has_secure_password

    validates :user_name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :acct_type, inclusion: { in: ["Parent", "Teacher"] }
    validates :phone_number, presence: true, uniqueness: true
    validates :photo_id, presence: true


    def parents_children
        Child.where(parent_id: self.id)
    end    

    def teachers_students
        Child.where(teacher_id: self.id)
    end    
end
