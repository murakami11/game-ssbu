class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
    @comments = @character.comments
    @comment = Comment.new
  end
end
