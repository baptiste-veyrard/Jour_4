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

  etage = 71
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

perform
