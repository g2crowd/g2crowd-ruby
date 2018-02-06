module G2crowd
  class Category < Base
    has_many :products
    has_many :children, class_name: 'Category'
    has_many :ancestors, class_name: 'Category'
    has_many :descendants, class_name: 'Category'
    has_one :parent, class_name: 'Category'
  end
end
