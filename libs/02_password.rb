def mdp
puts "definissez un mot de passe"
print "--->"
mdp = gets.chomp

puts "Entrez le mot de passe"
print "--->"

mdp2 = gets.chomp

while mdp2 != mdp
  puts "mauvais mot de passe"
  print "-->"
  mdp2 = gets.chomp
end
puts "Espace secret"
end



mdp
