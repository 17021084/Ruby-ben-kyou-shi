is_tall = true
is_male = true

# nil se la false
p 'nil mang ga tri false ' if !nil 

if is_tall && is_male
  puts ' you tall and male'
elsif !is_male && is_male
  puts ' you tall and not male'
elsif !is_tall && is_male
  puts ' you not tall and male'
else
  puts ' you not tall and male '
end

num = 3

# short  way
# puts ' valid' if (2 > num) and (num < 4)
if (2 > num) || (num < 4)
  puts ' valid'
else
  puts 'invalid'
end

# even 0 also return valid.  nil return invalid
if nil
  puts 'valid'
else
  puts 'invalid'
end

def greeting(name)
  puts 'hello ' + name.to_s
end

greeting('trung') if is_male

# ==================

abbriviation = 'us'
case abbriviation
when 'us'
  puts ' United state'
when 'uk'
  puts ' united kingdom'
else
  puts ' invalid abbrivation'
end



#====================
unless 2<5
  puts "false"
else
  puts "true"
end
