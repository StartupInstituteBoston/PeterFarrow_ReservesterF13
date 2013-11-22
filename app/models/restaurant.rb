class Restaurant < ActiveRecord::Base
  # attr_accessible :restaurantimage
  mount_uploader :restaurantimage, RestaurantimageUploader
  # validates :restaurantimage, presence: true

  validates :name, presence: true, length: {minimum: 1}
  validates :description, presence: true, length: {minimum: 1}
  validates :address, presence: true, length: {minimum: 1}
  validates :phone, presence: true, length: {minimum: 1}
  validates :restaurantimage, format: {with: %r{\.gif|jpg|png}i,message: 'must be a url for gif, jpg, or png image.'}

  # Validation to be finished later http://guides.rubyonrails.org/getting_started.html
  # validates :name, presence: true, length: {minimum: 1}
  #    t.text :description
  #    t.text :address
  #    t.string :phone

end
