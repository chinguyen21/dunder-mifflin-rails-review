class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :alias, index: {unique: true}
      t.string :title, index: {unique: true}
      t.string :office
      t.string :img_url
      t.integer :dog_id
      t.timestamps
    end
  end
end
