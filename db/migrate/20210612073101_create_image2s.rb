class CreateImage2s < ActiveRecord::Migration[5.2]
  def change
    create_table :image2s do |t|
      t.string :image

      t.timestamps
    end
  end
end
