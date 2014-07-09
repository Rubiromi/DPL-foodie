class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image
      t.belongs_to :nom
      t.timestamps
    end

    add_index :photos, :nom_id
  end
end
