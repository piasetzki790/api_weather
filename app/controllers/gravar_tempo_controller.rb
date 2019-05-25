class GravarTempoController < ApplicationController

    def initialize(retorno)
        @retorno = retorno
       end
   
       def gravar
           gravar_clima   
       end
   
       def gravar_clima
           clima = Tempo.find_or_initialize_by(nome: @retorno["nome"])
           clima.save
               
           clima
       end
   
       private
   
   class ComunicacaoViatempo
   
       def buscar(clima)
   
           @clima = clima
        
   
           url = "https://api.openweathermap.org/data/2.5/weather?&APPID=f22e6f163327b2ff87d99a89cdeeabce&q=#{@clima}"                    
           retorno = JSON.parse(Net::HTTP.get(URI(url)))
           end

end
