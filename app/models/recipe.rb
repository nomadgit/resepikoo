class Recipe < ActiveRecord::Base
    belongs_to :category
    validates_presence_of :title, :description, :ingredients, :directions, :category_id
    validates_length_of :title, :within => 5..100
    validates_uniqueness_of :image_url, :on => :create, :allow_nil => true, :allow_blank => true
end
