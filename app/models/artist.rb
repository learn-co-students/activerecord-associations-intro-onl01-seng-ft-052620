class Artist < ActiveRecord::Base
    # We need to tell the Artist class that each artist object can have many songs. We will use the has_many macro to do it.
    has_many :songs
    # It is also true that an artist has many genres through songs. We will use the has_many through macro to implement this:
    has_many :genres, through: :songs
end
