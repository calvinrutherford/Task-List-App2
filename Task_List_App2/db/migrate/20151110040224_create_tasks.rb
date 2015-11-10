class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :priority
      t.date :duedate
      t.boolean :iscomplete
      t.integer :Task_List_id

      t.timestamps
    end
  end
end
