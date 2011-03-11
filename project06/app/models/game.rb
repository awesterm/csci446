class Game < ActiveRecord::Base
belongs_to :users

cattr_reader :per_page
@@per_page = 5

end
