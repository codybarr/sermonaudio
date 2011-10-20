module Sermonaudio
  class Configuration
    
    ## Require Savon library
    include ::Savon
    
    ::Savon.configure do |config|
      config.log = false            # disable logging
      config.log_level = :info      # changing the log level
      config.raise_errors = false   # do not raise SOAP faults and HTTP errors
      config.soap_version = 2       # use SOAP 1.2
    end

    def self.client      
      @@sermonaudio_savon_client ||= ::Savon::Client.new 'http://web4.sa-media.com/SASoapAPI/service.asmx?WSDL'
    end
    
  end
end
