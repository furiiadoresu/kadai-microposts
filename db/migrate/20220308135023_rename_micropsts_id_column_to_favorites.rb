class RenameMicropstsIdColumnToFavorites < ActiveRecord::Migration[6.1]
  def change
    rename_column :favorites, :micropost_id, :favorite_id
  end
end
