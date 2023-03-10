class ChildrenController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :child_not_found
rescue_from ActiveRecord::RecordInvalid, with: :child_not_valid

    def index
        children = Child.where(teacher_id: session[:user_id])
        render json: children, status: :ok
    end

    # def create
    #     parent = User.find_by!(parent_id: session[:user_id])
    #     if parent 
    #         child = Children.create!(parent_id:parent.id, 
    #         name: child_params[:name], dob: child_params[:dob], 
    #         image: child_params[:image], gener[:gender], teacher_id: child_params[:teacher_id] )
    #         render json: child , status: :created
    #     else
    #         render json: {errors: ['Child was not found'] }, status: :not_found
    #     end
    # end

    def show
        child = Child.find(params[:id])
        render json: child
    end

    def update
        child = Child.find(params[:id])
        child.update!(child_params)
        render json: child, status: :ok
    end

    def create
        child = Child.create!(child_params)
        render json: child, status: 201
    end

    def destroy
        child = Child.find(params[:id])
        child.destroy
        head :no_content
    end

    private

    def child_params
    params.require(:child).permit(:name, :dob, :image, :gender, :teacher_id, :parent_id, :notes, :pick_up)
    end

    def child_not_found
        render json: { errors: ['Child not found'] }, status: :not_found
    end
    
    def child_not_valid invalid_child
        render json: { errors: invalid_child.record.errors.full_messages }, status: 422
    end


end
