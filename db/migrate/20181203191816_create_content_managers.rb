class CreateContentManagers < ActiveRecord::Migration[5.0]
  def change
    create_table :content_managers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :content_managers, :email, unique: true
  end
end
