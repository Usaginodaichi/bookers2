class UsersController < ApplicationController


  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.all
  end

  def edit
  end

  private

  def book_params
    params.require(:user).permit(:name, :introduction)
  end

end
