class Addtosettings < ActiveRecord::Migration
  def change
  	add_column :settings, :promotion, :string, default: "yes"
  	add_column :settings, :survey, :string, default: "yes"
  	add_column :settings, :moving, :string, default: "yes"
  end
end
