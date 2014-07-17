class CreateVisuals < ActiveRecord::Migration
  def change
    create_table :visuals do |t|

      t.timestamps
    end
  end
end
