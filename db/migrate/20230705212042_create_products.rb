class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.belongs_to :tenant, null: false, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
