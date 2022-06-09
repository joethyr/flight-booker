class AddDataToPassengers < ActiveRecord::Migration[7.0]
  def change
    add_column :passengers, :date_of_birth, :date
    add_column :passengers, :phone, :string
  end
end
