class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string     :name,     null: false
      t.float      :surface,  null: false
      t.references :user,     foreign_key: true
      t.references :crop,     foreign_key: true
      t.timestamps
    end
  end
end
