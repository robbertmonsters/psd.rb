require_relative '../layer_info'

class PSD
  class ArtBoard < LayerInfo
    @key = 'artb'

    def parse
      @file.seek 3, true
      @data = Descriptor.new(@file).parse
    end
  end
end