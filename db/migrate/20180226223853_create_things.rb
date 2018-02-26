class CreateThings < ActiveRecord::Migration[5.1]
  def change
    create_table :things do |t|
      t.string :title
      t.timestamp :date
      t.boolean :finished

      t.timestamps
    end
  end
end
