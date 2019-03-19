# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  ##### RELATIONSHIPS
  has_many :videos, dependent: :destroy

  ##### VALIDATIONS
  validates_associated :videos
  validates :email, presence: true, uniqueness: true
end
