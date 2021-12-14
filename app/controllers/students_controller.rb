class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.all
        graded = grades.sort{ |a, b| b.grade <=> a.grade}
        render json: graded
    end
end
