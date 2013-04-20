class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :zip
      t.string :phone
      t.string :url
      t.integer :institution_type

      t.timestamps
    end
  end
end
