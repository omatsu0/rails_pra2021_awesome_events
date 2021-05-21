# frozen_string_literal: true

class RenameContetntColumnToEvents < ActiveRecord::Migration[6.0]
  def change
    rename_column :events, :contetnt, :content
  end
end
