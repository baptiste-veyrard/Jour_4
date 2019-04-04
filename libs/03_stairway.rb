def menu
	puts "Bienvenue dans ton nouveaux jeux préferé."
	puts "Tu te trouve en bas d'un escalier de 10 marches, et tu dois monter tout en haut :)"
	puts"Veux-tu démarrer le jeux en jetant le dé? (Yes/No)"

	answer = gets.chomp

	while answer != "yes"
		puts"Tu n'as pas répondu oui, le jeux de démarre pas."
		puts "Veux-tu démarrer le jeux en jetant le dé? (Yes/No)"
		answer = gets.chomp
	end

	return answer
	
end

def lancer_dé
	jet = rand(1...6)
	puts"Tu es tombé sur le chiffre #{jet}!"
	return jet
end

def monter
puts "Félicitation, tu montes d'une marche !"

end

def descendre
puts "Tu descend d'une marche, dommage !"

end

def rien
puts "Il ne se passe rien avec ce score!"

end

def message
puts "Féliciation, tu es arrivé sur la dernière marche, tu vas surement tout déchirer à THP"
end

def perform

	position = 0

	answer = menu

while position != 10

	jet = lancer_dé

	if jet == 5 || jet == 6
		monter
		position = position +1
	elsif jet == 1
		descendre
		position = position -1
	elsif jet == 2 || jet == 3 || jet == 4
		rien
	end

	puts "Tu es maintenant sur la marche #{position}"
	puts "Veux-tu jeter le dé à nouveaux? (yes/no)"
	answer = gets.chomp

	while answer != "yes"
		puts"Tu n'as pas répondu oui, le jeux de démarre pas."
		puts "Veux-tu démarrer le jeux en jetant le dé à nouveaux? (Yes/No)"
		answer = gets.chomp
	end

end		
message
end

perform
