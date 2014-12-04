class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.integer :admin
      t.integer :solved
      t.integer :submitted
      t.text :motto

      t.timestamps
    end
  end
end
