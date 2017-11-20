class AddActorToPlay < ActiveRecord::Migration
  def change
    add_reference :plays, :actor, index: true, foreign_key: true
  end
end
