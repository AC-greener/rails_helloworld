class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    # debugger
  end

  def create
    @user = User.new(user_params) # 不是最终的实现方式
    #相当于 @user = User.new(name: "Foo Bar", email: "foo@invalid",password: "foo", password_confirmation: "bar")
    if @user.save
      # 处理注册成功的情况
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
      # redirect_to user_url(@user)
    else
      render "new"
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
