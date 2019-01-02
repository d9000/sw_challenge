class Author::ShowSerializer < AuthorSerializer
      
    attributes :name, :email, :date_of_birth
    has_many :publications
end
  