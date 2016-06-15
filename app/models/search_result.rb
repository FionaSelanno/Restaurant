class SearchResult < ActiveRecord::Base
  belongs_to :location
  belongs_to :menu
  belongs_to :user
end
