def pyramidewtf
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisi un nombre impair)"

	n = gets.chomp.to_i
	e = " "
	p = "#"


while n%2==0
	puts "C'est un nombre pair, recommencez svp"
	print "Combien d'étages veux-tu ? (choisi un nombre impair) "
	n = gets.chomp.to_i
end

	if (n < 25) && (n > 1)

		n.times do |i|

			if i <= (n/2)
				print e * n
				puts  p * (i*2 +1)

			elsif i > (n/2)
				print e * (i + 1)
				puts  p * (n*2 -1)
			end
		n = n -1
		end

	end

end

pyramidewtf







