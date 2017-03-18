class AddAdditionalDataToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :year_of_birth, :integer
    add_column :users, :nationality, :string
  end
end
