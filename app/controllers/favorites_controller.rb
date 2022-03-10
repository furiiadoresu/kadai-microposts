class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    mp = Micropost.find(params[:micropost_id])
    current_user.favorite(mp)
    flash[:success] = 'お気に入りに追加しました。'
    redirect_to mp
  end

  def destroy
    mp = Micropost.find(params[:micropost_id])
    current_user.unfavorite(mp)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to mp
  end
end
