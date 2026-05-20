class CreateEmails < ActiveRecord::Migration[7.2]
  def change
    create_table :emails do |t|
      t.string :object
      t.text :body

      t.timestamps
    end
  end
end
