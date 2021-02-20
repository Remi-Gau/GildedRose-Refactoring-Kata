clear
clc

disp("OMGHAI!")

items(1) = item("+5 Dexterity Vest", 10, 20);
items(2) = item("Elixir of the Mongoose", 5, 7);
items(3) = item("Sulfuras, Hand of Ragnaros", 0, 80);
items(4) = item("Sulfuras, Hand of Ragnaros", -1, 80);
items(5) = item("Backstage passes to a TAFKAL80ETC concert", 15, 20);
items(6) = item("Backstage passes to a TAFKAL80ETC concert", 10, 49);
items(7) = item("Backstage passes to a TAFKAL80ETC concert", 3, 6);
items(8) = item("Conjured Mana Cake", 5, 49);

GildedRose = gilded_rose(items);

days = 2;
for day = 0:days
    fprintf(1, "\n")
    fprintf(1, "-------- day %i --------\n", day)
    fprintf(1, "name\t\t\tsell_in\tquality\n")
    for i = 1:numel(GildedRose.items)
        GildedRose.items(i).content
    end
    GildedRose = GildedRose.update_quality();
    fprintf(1, "\n")
end
