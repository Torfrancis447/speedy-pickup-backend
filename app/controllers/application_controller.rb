class ApplicationController < ActionController::API
    include ActionController::Cookies
    def user_with_kids user       
            if user.acct_type == "Parent"
              parent_with_children = {
              id: user[:id],
              name: user[:name],
              user_name: user[:user_name],
              email: user[:email],
              phone_number: user[:phone_number],
              acct_type: user.acct_type,
              children: user.parents_children,
              }
              render json: parent_with_children, status: 200
            elsif user.acct_type == "Teacher"
              teacher_with_students = {
                id: user[:id],
                user_name: user[:user_name],
                acct_type: user.acct_type,
                name: user.name,
                photo_id: user.photo_id,
                email: user.email,
                phone_number: user.phone_number,
                school: user.school,
                children: user.teachers_students
                   }
                render json: teacher_with_students, status: 200
            end

    end

    
    
    
end
