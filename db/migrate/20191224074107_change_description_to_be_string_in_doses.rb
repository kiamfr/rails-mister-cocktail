class ChangeDescriptionToBeStringInDoses < ActiveRecord::Migration[5.2]
  def up
    change_column :doses, :description, :string
  end
end
