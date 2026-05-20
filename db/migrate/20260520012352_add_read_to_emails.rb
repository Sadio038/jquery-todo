class AddReadToEmails < ActiveRecord::Migration[7.2]
  def change
    add_column :emails, :read, :boolean, default: false
  end
end