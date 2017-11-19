class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :last_name
      t.string :first_name
      t.date :date_of_birth
      t.string :gender
      t.timestamps
    end
  end
end
