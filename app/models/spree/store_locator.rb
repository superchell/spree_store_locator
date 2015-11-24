require 'geocoder'

class Spree::StoreLocator < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :address1, :city, :country, :state, presence: true

  scope :state_ordered, -> { order('state ASC') }

  geocoded_by :full_street_address

  after_validation :geocode, :if => :has_location?, :unless => :has_coordinates?

  def full_street_address
    "#{address1}, #{city}, #{state} #{zip}, #{country}"
  end

  def has_coordinates?
    latitude && longitude
  end

  def has_location?
    full_street_address.present?
  end
end
