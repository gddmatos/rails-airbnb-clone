class AddPhotoToChateau < ActiveRecord::Migration[5.0]
  def change
    add_column :chateaus, :photo, :string
  end
end
