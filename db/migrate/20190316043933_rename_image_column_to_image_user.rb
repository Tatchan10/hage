class RenameImageColumnToImageUser < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :Image, :image_user
  end
end
