# A class to create IQY files
class IqyPrinter
    
    attr_accessor :url
    
    def initialize
        @parameters = {}
    end
    
    # ads a parameter. if the prompt is not nil, the iqy will prompt the user with the prompt as title.
    def add_parameter( key, value, prompt=nil )
        @parameters[ key ] = [value, prompt]
    end
    
    def print
       #build param string
       p_arr = []
       @parameters.each_key do |k|
            value = @parameters[k]
            value = value[1].nil? ? value[0] : "[\"#{value[0]}\",\"#{value[1]}\"]"
            p_arr << "#{k}=#{value}"
       end
       p_str = p_arr.join("&");
       [
           "WEB",
           "1",
           self.url,
           p_str
       ].join("\n");
       
    end
end