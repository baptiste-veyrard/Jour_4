def signup
	puts "Sign up :definissez un mot de passe"
	print "--->"
	mdp = gets.chomp
	return mdp
end

def login
	puts "Login : Entrez le mot de passe"
	print "--->"
	mdp2 = gets.chomp
	return mdp2
end

def welcomeScreen
	puts "Welcome Screen : Bienvenue dans l'Espace secret"
	puts "Voici les plans d'une fusée secrète bien caché dans la zone 51."
	pyramidewtf
end


def perform
	mdp = signup
	mdp2 = login
		while !(mdp2 == mdp)
		puts "Mauvais mot de passe, veuillez réésayer:"
		print "--->"
		mdp2 = gets.chomp
		end 
	welcomeScreen
end

def pyramidewtf

	n = 21
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

perform
