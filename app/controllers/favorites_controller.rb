class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    mp = Micropost.find(params[:micropost_id])
    current_user.favorite(mp)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_back(fallback_location: root_path)
  end

  def destroy
    mp = Micropost.find(params[:micropost_id])
    current_user.unfavorite(mp)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_back(fallback_location: root_path)
  end
end
