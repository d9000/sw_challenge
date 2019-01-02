class Author::IndexSerializer
  include FastJsonapi::ObjectSerializer
  set_type :author
  
  attributes :name, :email, :date_of_birth
end
