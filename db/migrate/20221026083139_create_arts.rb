class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|

      t.string :title
      t.text :caption
      t.boolean :is_released, default: true, null: false

      t.timestamps
    end
  end
end
