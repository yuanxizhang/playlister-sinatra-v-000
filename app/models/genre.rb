class Genre < ActiveRecord::Base
	has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs
  
  # extend Slugifiable::ClassMethods
  # include Slugifiable::InstanceMethods
<<<<<<< HEAD

  def slug
      self.name.strip.gsub(" ", "-").downcase
  end

  def self.find_by_slug(slug)
      self.all.find {|item| item.slug == slug}
  end
=======
>>>>>>> 7e86cad77b0abd8baf38c972f189607dda439af1
end