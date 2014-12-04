class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title, :null => false
      t.integer :time_limit, :default => 1000
      t.integer :memory_limit, :default => 65536
      t.text :description
      t.text :input
      t.text :output
      t.text :sample_input
      t.text :sample_output
      t.text :hint
      t.text :source
      t.integer :contest, :default => 0
      t.boolean :special, :default => false

      t.timestamps
    end
  end
end
