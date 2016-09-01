class CreatePharmas < ActiveRecord::Migration
  def change
    create_table :pharmas do |t|
      t.string :name
      t.string :hsopitalname

      t.timestamps null: false
    end
  end
end
