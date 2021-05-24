class DiseasesController < ApplicationController
 def index
 @diseases = Disease.all

 end

def disease_params
 params.require(:disease).permit(:name,:id)
 end


end
