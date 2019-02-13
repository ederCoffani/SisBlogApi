class AddReportToReport < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :toreport, :boolean
  end
end
