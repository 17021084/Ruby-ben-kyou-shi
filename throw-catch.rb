floor = [["Một", "Hai", "Ba"],
         ["Bốn", "Năm", "Sáu"],
         ["Bảy", "Tám", "Chín"]]

number = 0

tang = catch(:found) do
  floor.each do |row|
    row.each do |tile|
      number += 1
      throw(:found, tile) if tile == 'Năm'
    end
  end
end
puts tang
puts number
