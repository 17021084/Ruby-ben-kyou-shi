

states ={
    84 => "viet Nam",
    :Us => "United State",
    "UK" => "UK",
    :provice => {
        :tb => "thaibinh",
        "hg"=>"hagiang"
    }
}

puts states[84]
puts states[:Us]
puts states["UK"]
puts states[:provice]
puts states[:provice][:tb]

puts states.include? 

