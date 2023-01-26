class SchoolsController < ApplicationController

    def index
        render json: School.all, status: 200
    end

    
end
