class Video < ActiveRecord::Base
	belongs_to :user

	def self.search(search)
		where("name like ? OR description like ?", "%#{search}%", "%#{search}%")
	end

	has_attached_file :video, styles: {
        :medium => {
			:geometry => '640x480',
			:format => 'mp4'
        },
        :thumb => { :geometry => '640x480', :format => 'jpeg', :time => 2}
    }, :processors => [:transcoder]
    do_not_validate_attachment_file_type :video
    validates :video, :attachment_presence => true
    validates_with AttachmentPresenceValidator, :attributes => :video
    validates_with AttachmentSizeValidator, :attributes => :video, :less_than => 500.megabytes

	validates :name, presence: true
	validates :description, presence: true

	# Scopes
	scope :myvideos, -> { where(user_id: current_user.id) }
end