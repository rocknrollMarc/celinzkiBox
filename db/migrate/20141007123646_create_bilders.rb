class CreateBilders < ActiveRecord::Migration
  def change
    create_table :bilders do |t|
      t.string :image_uid
      t.string :title

      t.timestamps
    end
  end
end
