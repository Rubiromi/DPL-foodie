class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title, null: false
      t.boolean :all_day, default: false
      t.datetime :starts_at
      t.datetime :ends_at
      t.string :url
      t.string :color
      t.timestamps
    end
  end
end
