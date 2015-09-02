class Search
  def self.for(query)
    Shirt.where("name LIKE ?", "%#{query}%")
  end
end
