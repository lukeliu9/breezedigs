class SetDefaults < ActiveRecord::Migration
  def change
  	change_column :reviews, :status, :string, default: "unapproved"
  	change_column :buildings, :status, :string, default: "unapproved"
  end
end
