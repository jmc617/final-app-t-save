class TeachersController < ApplicationController
  def index
  end

  def show
    @teacher = Teacher.find(params[:id])
  end

  def delete_avatar
    teacher = Teacher.find(params[:id])

    if teacher.avatar.purge
      flash[:notice] = 'avatar removed'
      redirect_to "/teachers/edit"
    else
      redirect_to "/teachers/edit"
    end
  end

end
