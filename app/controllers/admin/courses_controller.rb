class Admin::CoursesController < AdminController
  before_action :authenticate_user!
  before_action :find_course, only: [:show, :edit, :update, :destroy]

  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = 'Course created successfuly!'
      redirect_to admin_course_path(@course.id)
    else
      flash[:notice] = 'Course creation failed'
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update_attributes(course_params)
      flash[:notice] = 'Course updated successfuly!'
      redirect_to admin_course_path(@course.id)
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    flash[:notice] = 'Course deleted successfuly!'
    redirect_to admin_courses_path
  end

  private

  def course_params
    params.require(:course).permit(:name, :start_date, :end_date, :description)
  end

  def find_course
    @course = Course.find(params[:id])
  end

end
