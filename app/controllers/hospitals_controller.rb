class HospitalsController < ApplicationController
respond_to :json
  def index
 @hospitals = Hospital.all
 @markers = @hospitals.geocoded.map do |hospital|
      {
        lat: hospital.latitude,
        lng: hospital.longitude
      }
    end

  end
end
