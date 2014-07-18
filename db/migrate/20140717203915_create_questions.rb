class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|

      t.string :prompt
      t.integer :q_type, default: 0, null: false
      t.timestamps
    end
  end
end
