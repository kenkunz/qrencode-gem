module QR
  ESCAPE_REGEXP = /([\\$`"])/
  DEFAULT_MODULE_SIZE = 3
  
  class << self
    def binary
      File.join(File.dirname(__FILE__), 'bin', 'qrencode')
    end

    def encode(data, module_size=DEFAULT_MODULE_SIZE)
      %x(#{binary} -s #{module_size} -o - #{quote(data)})
    end

    def quote(data)
      escaped = data.gsub ESCAPE_REGEXP, '\\\\\1'
      %Q("#{escaped}")
    end
  end
end
