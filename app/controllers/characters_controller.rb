class CharactersController < ApplicationController
  before_action :admin_check, only: [:edit, :update]
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
    @comments = @character.comments.paginate(page: params[:page], per_page: 10)
    @comment = Comment.new
  end
  
  def edit
    # adminだけが編集できる
    @character = Character.find(params[:id])
  end
  
  def update
    # adminだけが編集実行できる
    @character = Character.find(params[:id])
    @character.update(character_params)
    redirect_to @character
  end
  
  private
  def admin_check
    redirect_back(fallback_location: root_url) unless current_user.admin?
  end
  
  def character_params
    params.require(:character).permit(:name, :description, :rank, :image)
  end
end
