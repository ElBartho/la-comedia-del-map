class AddPlayToActors < ActiveRecord::Migration
  def change
    add_reference :actors, :play, index: true, foreign_key: true
  end
end
