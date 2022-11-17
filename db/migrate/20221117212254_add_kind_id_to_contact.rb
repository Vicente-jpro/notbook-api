class AddKindIdToContact < ActiveRecord::Migration[7.0]
  def change
    add_reference :contacts, :kind, null: false, foreign_key: true, default: 1
  end
end
