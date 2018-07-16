class User < ApplicationRecord
  extend Enumerize
  ROLES = {admin: 1, crew_member: 2, content_manager: 3, client: 4}
  enumerize :roles, in: ROLES
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable,
          :registerable,
          :recoverable,
          :rememberable,
          :trackable,
          :validatable
end
