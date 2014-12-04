class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :problem_id
      t.integer :author
      t.datetime :submit_time
      t.integer :exe_time
      t.integer :exe_memory
      t.integer :code_len
      t.integer :language
      t.integer :result

      t.timestamps
    end
  end
end
