class CreatePujas < ActiveRecord::Migration[5.0]
  def change
    create_table :pujas do |t|

      t.timestamps
    end
  end
end
