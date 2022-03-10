class RenameFavoriteIdColumnToMicropostId < ActiveRecord::Migration[6.1]
  def change
    rename_column :favorites, :favorite_id, :micropost_id
  end
end
