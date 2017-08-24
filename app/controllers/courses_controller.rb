class CoursesController < ApplicationController
  def index
    @teacher = Teacher.find(params[:teacher_id])
    @courses = @teacher.courses
  end

  def show
    @teacher = Teacher.find(params[:teacher_id])
  end

  def new
    @course = Course.new
  end

  def create
    @teacher = Teacher.find(params[:teacher_id])
    @course = @teacher.courses.new(course_params)
    if @course.save
      flash[:success] = "Course created"
      redirect_to teacher_courses_path(@teacher)
    else
      flash[:failure] = "Course not created"
      redirect_to new_teacher_course_path(@teacher)
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @teacher = Teacher.find(params[:teacher_id])
    @course = Course.find(params[:id])
    if @course.update(course_params)
      flash[:success] = "Course updated"
      redirect_to teacher_courses_path(@teacher)
    else
      render :edit
    end
  end

  def destroy
    @teacher = Teacher.find(params[:teacher_id])
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to teacher_courses_path(@teacher)
  end

  private

  def course_params
    params.require(:course).permit(:name, :teacher_id)
  end
end
