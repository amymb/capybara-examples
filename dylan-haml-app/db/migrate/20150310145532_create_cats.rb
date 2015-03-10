class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :name
      t.decimal :age
      t.boolean :friendly
      t.timestamps
    end
  end
end
