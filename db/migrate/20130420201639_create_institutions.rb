class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :city
      t.string :state_abbr
      t.string :zip_code
      t.string :phone
      t.string :url
      t.integer :institution_type

      t.timestamps
    end
  end
end
