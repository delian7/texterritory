class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|

      t.string :input
      t.timestamps
    end
  end
end
