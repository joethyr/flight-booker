class ChangeDataTypeForDepartTime < ActiveRecord::Migration[7.0]
  def change
    change_column :flights, :depart_time, :date
  end
end
