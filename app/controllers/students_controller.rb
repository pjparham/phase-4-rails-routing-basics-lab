class StudentsController < ApplicationController

    def index
        render json: Student.all
    end

    def highest_grade
        render json: Student.all.sort_by(&:grade).reverse.first
    end

    def grades
       render json: Student.all.sort_by(&:grade).reverse
    end


end
