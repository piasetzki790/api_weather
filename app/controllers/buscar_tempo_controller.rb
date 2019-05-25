class BuscarTempoController < ApplicationController
    
    
    def buscar_atual
        render json: ComunicacaoTempo.new.buscar(cidade_params[:cidade]), status: :ok
    end

    def buscar_proximas_horas
        render json: ComunicacaoPH.new.buscar(cidade_params[:cidade]), status: :ok
    end

    def buscar_proximos_dias
        render json: ComunicacaoPD.new.buscar(cidade_params[:cidade]), status: :ok 
    end
     
    private

    def cidade_params
        params.permit(:cidade)
    end
   
        
    
end
