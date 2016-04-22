class CreateMonkeys < ActiveRecord::Migration
  def change
    create_table :monkeys do |t|
      t.string :name
      t.integer :status

      t.timestamps null: false
    end
  end
end
