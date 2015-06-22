class Product < ActiveRecord::Base
  include PgSearch
  belongs_to :brand
  belongs_to :clothing_type

  pg_search_scope :search_product, :associated_against => {
    :brand => {:name => 'A'},
    :clothing_type => {:name => 'B'}
  }, :using => {
    :tsearch => {:any_word => true, :prefix => true}
      }
end
