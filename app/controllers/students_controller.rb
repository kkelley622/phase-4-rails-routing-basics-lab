class StudentsController < ApplicationController
    def index 
        students = Student.all 
        render json: students 
    end

    def grades 
        ordered_students = Student.all.order(grade: :desc)
        render json: ordered_students
    end

    def highest_grade 
        best_student = Student.all.order(:grade).last
        render json: best_student 
    end
end
