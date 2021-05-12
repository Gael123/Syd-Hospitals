class HospitalsController < ApplicationController
  respond_to :json
  def index
    @hospitals = Hospital.all
  end
end
