classdef item
   properties
      name
      sell_in
      quality
   end
   methods
      function obj = item(name, sell_in, quality)
        obj.name = name;
        obj.sell_in = sell_in;
        obj.quality = quality;
      end
      function content(obj)
        fprintf(1, '%s\t%i\t%i\n', obj.name, obj.sell_in, obj.quality)
      end
   end
end



