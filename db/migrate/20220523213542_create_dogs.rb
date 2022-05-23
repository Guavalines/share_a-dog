class CreateDogs < ActiveRecord::Migration[6.1]
  def change
    create_table :dogs do |t|
      t.date :born_on
      t.string :breed
      t.string :name
      t.string :sex
      t.boolean :neutered
      t.string :size
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
