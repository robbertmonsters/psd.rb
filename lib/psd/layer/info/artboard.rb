require 'psd/layer_info'

class PSD
  class Artboard < LayerInfo
    def self.should_parse?(key)
      key == 'artb'
    end

    # attr_reader :enabled
    def parse
      @file.seek 4, IO::SEEK_CUR
      @data = Descriptor.new(@file).parse
    end
  end
end