class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        ret = Student.all.order(grade: :desc)
        render json: ret
    end

    def highest_grade
        highest = Student.all.order('grade desc').limit(1)[0]
        render json: highest
    end

end
