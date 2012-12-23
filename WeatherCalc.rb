#Author: Anan Mallik

class WeatherCalc
  f = File.open('w_data.dat')
  a = f.readlines
  size = a.length - 3
  difference = [0,0,0,0,0]

  for j in 6..size
    #puts a[j]
    n = [0,0,0,0]
    word = a[j]
    b = word.chars.to_a
    length = b.length

    for i in 0..length
        n[0] = b[6]
        n[1] = b[7]
        n[2] = b[12]
        n[3] = b[13]

        number1 =  n[0] +  n[1]
        number2 =  n[2] +  n[3]

        num1 = Integer(number1)
        num2 = Integer(number2)

        difference[j-6] = (num1 - num2).abs
      end
    end
  index =  difference.index(difference.min())  + 6
  answer = a[index]
  day1 = answer[2]
  day2 = answer[3]
  day = day1 + day2

  puts""; puts "The Day with the Minimum Temperature Difference is: " + day
end