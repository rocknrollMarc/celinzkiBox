class AddImageSizeToBilder < ActiveRecord::Migration
  def change
    add_column :bilders, :image_size, :integer
  end
end
