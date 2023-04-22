class CreateAstronomicalItems < ActiveRecord::Migration[5.2]
  def change
    create_table :astronomical_items do |t|
      t.text :name
      t.text :summary
      t.text :category
      t.text :image
      t.integer :user_id

      t.timestamps
    end
  end
end
