class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.boolean :finished, default: false
      t.references :user,  null: false
      t.timestamps
    end
  end
end
