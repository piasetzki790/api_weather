class BuscarTempoController < ApplicationController
    require 'net/http'
    require 'json'

    def clima
        render json: ComunicacaoViatempo.new.clima(clima_params[:clima])
    end
    
    private 

    def clima_params
        params.permit(:clima)
    end
end
