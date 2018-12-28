class CreateToodooItems < ActiveRecord::Migration[5.2]
  def change
    create_table :toodoo_items do |t|
      t.string :description

      t.timestamps
    end
  end
end
