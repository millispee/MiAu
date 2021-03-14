class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.string :cover_image
      t.integer :availabe_pages
      t.string :initially_uploaded_by
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
