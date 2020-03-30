class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    render json: {status: 'succes' ,message: '全部送ったで', data: @user}
  end

  def create
    @user = User.new(strong_para)
    if user.save
      render json:{ status: 'succes',data: user}
    else
      render json:{ status: 'error', data: user.errors}
    end
  end

  private
  def  strong_para
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
end
