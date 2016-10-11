class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :value, null: false
      t.references :user, null: false
      t.references :story, null: false
      t.timestamps
    end
  end
end
