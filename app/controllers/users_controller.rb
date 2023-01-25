class UsersController < ApplicationController

    
    def create
        user = User.new(user_params)
        if user.valid?
            user.save
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: 422
        end
    end
    
    # def create
    #     user = User.create(user_params)
    #     if user.valid?
    #       render json: user, status: :created
    #     else
    #       render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    #     end
    # end
    
    # def destroy
    #     session.delete :user_id
    #     head :no_content
    # end
    
    
    def show_parent
        parent = User.find_by(id: params[:id])
        parent_with_children = {
            name: parent.name,
            children: parent.parents_children 
        }
        render json: parent_with_children, status: 200
        
    end
    
    def show_teacher
        teacher = User.find_by(id: params[:id])
        if teacher
            teacher_with_students = {
                name: teacher.name,
                email: teacher.email,
                phone_number: teacher.phone_number,
                school: teacher.school,
                students: teacher.teachers_students
        }
            render json: teacher_with_students, status: 200
        else
            render json: { errors: ["Teacher not found"] }, status: 404
        end
    end

    private

    def user_params
        params.permit(:name, :user_name, :password, :password_confirmation, :photo_id, :acct_type, :phone_number, :email, :school_id)
    end

end
