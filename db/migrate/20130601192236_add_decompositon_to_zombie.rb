class AddDecompositonToZombie < ActiveRecord::Migration
  def change
    add_column :zombies, :decomp, :string
  end
end
