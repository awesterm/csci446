class Author < ActiveRecord::Base

	validates_presence_of :name
	validate :no_author_named_sally
	has_many :articles

	has_attached_file :photo,
							:url => '/assets/:class/:attachment/:id/:style/:filename'


	cattr_reader :per_page
	@@per_page = 5
	
	def to_s
		name
	end	
	
	private

	def no_author_named_sally
	     errors.add_to_base("Must not be named Sally due to prior childhood hearbreak.") if name.downcase.include? 'sally'
	 end


end
