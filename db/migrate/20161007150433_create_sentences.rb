class CreateSentences < ActiveRecord::Migration[5.0]
  def change
    create_table :sentences do |t|
      t.string :text, null: false
      t.references :user, null: false
      t.references :story, null: false 
      t.timestamps
    end
  end
end
