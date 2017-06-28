
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   has_many :personal_informations, dependent: :delete_all
   has_many :learnings, dependent: :delete_all
   has_many :employment_informations, dependent: :delete_all
   has_many :company_informations, dependent: :delete_all
end
