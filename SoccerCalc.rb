
class SoccerCalc
      f = File.open('soccer.dat')
      a = f.readlines
      size = a.length - 2
      difference = [0,0,0,0,0]
for j in 3..size
  if j == 20
    j = j + 1
  end
      puts a[j]
      n = [0,0,0,0]
      word = a[j]
      b = word.chars.to_a
      length = b.length
      for i in 0..length
         if b[i] == "-"
          n[0] = b[i-4]
          n[1] = b[i-3]
          n[2] = b[i+3]
          n[3] = b[i+4]

          number1 =  n[0] +  n[1]
          number2 =  n[2] +  n[3]

          num1 = Integer(number1)
          num2 = Integer(number2)

          difference[j-3] = (num1 - num2).abs
          difference[17] = 99*99
          end
      end
  end
  index =  difference.index(difference.min())  + 3
  team_line = a[index]
      team1 = team_line[7];   team2 = team_line[8]
      team3 = team_line[9];   team4 = team_line[10]
      team5 = team_line[11];  team6 = team_line[12]
      team7 = team_line[13];  team8 = team_line[14]
      team9 = team_line[15];  team10 = team_line[16]
      team11 = team_line[17]; team12 = team_line[18]
      team13 = team_line[19]; team14 = team_line[20]
      team =  team1+team2+team3+team4+team5+team6+team7+team8+team9+team10+team11+team12+team13+team14

  puts""; puts "The Team with the Minimum For/Against Goal Difference is: " + team
end
