def play #playing music file
    file = 'deti-online.com_-_happy-birthday-to-you-detskiy-hor.mp3'
    pid = fork{ exec 'afplay', file } 
end

# setup date and time
day = gets.chomp.to_i
month = gets.chomp.to_i
hour = gets.chomp.to_i
min = gets.chomp.to_i

while true
    time = Time.now
    if time.day == day and time.month == month and time.hour == hour and time.min == min
        play
        break
    end
end