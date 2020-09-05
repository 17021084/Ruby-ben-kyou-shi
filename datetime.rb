

# Get current time using the time zone of current local system
p Time.now

# Get current time using the time zone of UTC
p Time.now.utc

# Get the unix timestamp of current time => 1364046539
p Time.now.to_i

# Convert from unix timestamp back to time form
p Time.at(1364046539)

# Format the string output with #strftime method => "March 23, 2013 at 09:48 AM"
p Time.at(1364046539).strftime("%B %e, %Y at %I:%M %p")

p Time.now.strftime("%Y %m %d")