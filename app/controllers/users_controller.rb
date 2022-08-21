class UsersController < ApplicationController


  def index
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
    params.require(:book).permit(:title, :opinion)
  end

end
