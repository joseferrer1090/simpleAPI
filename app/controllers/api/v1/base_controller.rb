#Base_controller

class Api::V1::BaseController < ApplicationController
  respond_to :json
end

#Este controlador base para los demas controladores y responden en formato JSON
# Previamente se dbe instalar la Gem responders
# Todo los controladores que vaya a tener el API deben Heredar de este
