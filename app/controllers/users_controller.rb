class UsersController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.page(params[:page])
  end

  def edit
  end
end
