class AddBioToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :bio, :text
  end
end
