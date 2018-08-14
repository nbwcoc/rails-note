class AddNotNullToNote < ActiveRecord::Migration[5.2]
  def change
    change_column_null :notes, :identifier, false
  end
end
