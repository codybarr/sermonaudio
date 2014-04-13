module SermonAudio

  class Client

    include Savon

    attr_reader :client
    operations = {speakers: :get_speakers_by_keyword, 
                  sermons: :get_sermons_by_member_id}
    
    ## Setup the client
    def initialize      
      @client = Savon.client(wsdl: 'http://web4.sa-media.com/SASoapAPI/service.asmx?WSDL')
    end

    #TODO: work Finder methods into the client
    def find(method, args = {})
      # make calls to the right method based on the method and the arguments
      self.client.call(operations[method], args)
    end
    
  end
end