class Article < ActiveRecord::Base

  validates_presence_of :title
  validates_presence_of :body

  cattr_reader :per_page
  @@per_page = 5

  before_save :increment_update_count

	belongs_to :author

	def to_s
		title
	end	

  private
  
    def increment_update_count
      self.update_count += 1 unless self.new_record?
    end


end
