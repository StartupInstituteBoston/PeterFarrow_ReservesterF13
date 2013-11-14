class Restaurant < ActiveRecord::Base

  validates :name, presence: true, length: {minimum: 1}
  validates :description, presence: true, length: {minimum: 1}
  validates :address, presence: true, length: {minimum: 1}

  # Validation to be finished later http://guides.rubyonrails.org/getting_started.html
  # validates :name, presence: true, length: {minimum: 1}
  #    t.text :description
  #    t.text :address
  #    t.string :phone

end
