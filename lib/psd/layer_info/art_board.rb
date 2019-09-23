require_relative '../layer_info'

class PSD
  class ArtBoard < LayerInfo
    @key = 'artb'

    def parse
      f = @file
      f.read_path_number
      d = Descriptor.new(f)
      @data = d.parse
    end

    def export
      {coords: {left: @data["artboardRect"]["Left"], top: @data["artboardRect"]["Top "], right: @data["artboardRect"]["Rght"], bottom: @data["artboardRect"]["Btom"]}}
    end
  end
end