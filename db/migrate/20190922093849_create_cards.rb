class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :page_id
      t.text :content

      t.timestamps
    end
  end
end
