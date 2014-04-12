module SermonAudio
  ## Require Savon library
  include Savon

  module Client

    extend self
    
    ## Setup the client
    def client      
      @sermonaudio_savon_client ||= Savon.client(wsdl: 'http://web4.sa-media.com/SASoapAPI/service.asmx?WSDL')
    end
    
  end
end