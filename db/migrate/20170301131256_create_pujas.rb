class CreatePujas < ActiveRecord::Migration[5.0]
  def change
    create_table :pujas do |t|
      t.string :name
      t.text :description
      t.text :benefit
      t.decimal :suggested_offering

      t.timestamps
    end
  end
end
