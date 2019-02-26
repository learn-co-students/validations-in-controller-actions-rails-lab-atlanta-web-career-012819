class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    # @author = Author.create!(author_params)
    @author = Author.new(author_params)
    # binding.pry

    if @author.valid?
      # binding.pry
      @author.save
      redirect_to author_path(@author)
    else
      # binding.pry
      render :new
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
