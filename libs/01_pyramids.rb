
def pyramide
puts "Salut, bienvenue dans ma super pyramide! Combien d'étages veux-tu? (nombre impaire)"
print "Nombre étages: "

etage = gets.chomp.to_i
  while etage%2==0
    puts "nombre pair, recommencez"
    print "Nombre étages: "
    etage = gets.chomp.to_i
  end

puts "Voici la pyramide : "

etage1 = (etage + 1) / 2
etage2 = (etage - 1) / 2

  (etage1).times do |i|
     espace = ""
     diez = "#"

      (etage1-i-1).times do
         espace += " "
       end

       nbdiez = i
       nbdiez.times do
       diez +="##"
        end

     print "#{espace}"
     puts "#{diez}"
   end

  (etage2).times do |i|
     espace = ""
     diez = "#"

        (i+1).times do
         espace += " "
        end

       (etage2-i-1).times do
       diez += "##"
      end
     print "#{espace}"
     puts "#{diez}"
   end
end

pyramide
