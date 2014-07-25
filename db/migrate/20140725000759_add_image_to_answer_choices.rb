class AddImageToAnswerChoices < ActiveRecord::Migration
  def change
    add_column :answer_choices, :image, :string
  end
end
