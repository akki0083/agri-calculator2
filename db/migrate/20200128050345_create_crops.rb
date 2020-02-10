class CreateCrops < ActiveRecord::Migration[5.2]
  def change
    create_table :crops do |t|
      t.string     :name, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
