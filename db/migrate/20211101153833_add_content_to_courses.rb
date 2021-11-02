class AddContentToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :content, :text
    add_column :courses, :image_url, :string
    add_column :courses, :difficulty, :integer

  end
end
