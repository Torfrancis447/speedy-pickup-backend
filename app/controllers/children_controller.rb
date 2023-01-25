class ChildrenController < ApplicationController
    def index
        children = Child.where(teacher_id: sessions[:user_id])
        render json: children, status: :ok
    end
end
