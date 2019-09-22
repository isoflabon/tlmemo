class CreatePages < ActiveRecord::Migration[6.0]
  def change
    create_table :pages do |t|
      t.integer :folder_id

      t.timestamps
    end
  end
end
