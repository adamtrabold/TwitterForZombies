class AddTweetsToZombie < ActiveRecord::Migration
  def change
    add_column :zombies, :tweet, :array
  end
end
