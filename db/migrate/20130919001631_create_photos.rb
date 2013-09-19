class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.text :caption
      t.boolean :private, :default => false
      t.integer :user_id

      t.timestamps
    end
  end
end