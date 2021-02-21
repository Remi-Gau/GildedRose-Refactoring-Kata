classdef gilded_rose
    properties
        items
    end
    
    methods
        
        function obj = gilded_rose(items)
            obj.items = items;
        end
        
        function obj = update_quality(obj)
            
            item = obj.items;
            
            for i = 1:numel(item)
                if item(i).name ~= "Aged Brie" && item(i).name ~= "Backstage passes to a TAFKAL80ETC concert"
                    if item(i).quality > 0
                        if item(i).name ~= "Sulfuras, Hand of Ragnaros"
                            item(i).quality = item(i).quality - 1;
                        end
                    end
                else
                    if item(i).quality < 50
                        item(i).quality = item(i).quality + 1;
                        if item(i).name == "Backstage passes to a TAFKAL80ETC concert"
                            if item(i).sell_in < 11
                                if item(i).quality < 50
                                    item(i).quality = item(i).quality + 1;
                                end
                            end
                            if item(i).sell_in < 6
                                if item(i).quality < 50
                                    item(i).quality = item(i).quality + 1;
                                end
                            end
                        end
                    end
                end
                if item(i).name ~= "Sulfuras, Hand of Ragnaros"
                    item(i).sell_in = item(i).sell_in - 1;
                end
                if item(i).sell_in < 0
                    if item(i).name ~= "Aged Brie"
                        if item(i).name ~= "Backstage passes to a TAFKAL80ETC concert"
                            if item(i).quality > 0
                                if item(i).name ~= "Sulfuras, Hand of Ragnaros"
                                    item(i).quality = item(i).quality - 1;
                                end
                            end
                        else
                            item(i).quality = item(i).quality - item(i).quality;
                        end
                    else
                        if item(i).quality < 50
                            item(i).quality = item(i).quality + 1;
                        end
                    end
                end
            end
            
            obj.items = item;
            
        end
    end
end

