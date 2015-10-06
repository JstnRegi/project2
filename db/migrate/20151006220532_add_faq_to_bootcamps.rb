class AddFaqToBootcamps < ActiveRecord::Migration
  def change
    add_column :bootcamps, :faq, :string
  end
end
