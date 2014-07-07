class CreateNoms < ActiveRecord::Migration
  def change
    create_table :noms do |t|
      t.string :name
      t.boolean :delicious

      t.timestamps
    end
  end
end
