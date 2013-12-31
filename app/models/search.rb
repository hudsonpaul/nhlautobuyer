class Search < ActiveRecord::Base
  belongs_to :team
  belongs_to :position
  belongs_to :style
  belongs_to :player_type
  has_many :filters
end
