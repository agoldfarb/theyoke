class TeachersController < ApplicationController
  before_action :authenticate_teacher!

  def edit
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def index
    @teachers = Teacher.all
  end

  def update
     if current_teacher.update_attributes(teacher_params)
       flash[:notice] = "User information updated"
       redirect_to edit_teacher_registration_path
     else
       flash[:error] = "Invalid user information"
       redirect_to edit_teacher_registration_path
     end
   end
 
   private
 
   def teacher_params
     params.require(:teacher).permit(:name, :theme, :bio, :schedule)
   end
end

