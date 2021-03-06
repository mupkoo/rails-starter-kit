class User < ActiveRecord::Base

    # Constants
    ROLES = %w{user admin}

    # :trackable, :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable

    # Uploaders
    mount_uploader :photo, UserPhotoUploader


    def active_for_authentication?
        super && is_active
    end

    def inactive_message
        is_active ? super : "Sorry, this account is not active or it has been deactivated."
    end
end
