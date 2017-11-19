class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.string :title
      t.text :synopsis
      t.date :start_date
      t.date :end_date
      t.timestamps
    end
  end
end
