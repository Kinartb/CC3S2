# frozen_string_literal: true
def letra(cadena)
  letras ={}
  cadena.each_char do |letra|
    letras[letra]= true
  end
  ('a'..'z').each do |letra|
    return letra unless letras.key?(letra)
  end
  return "Se encuentran todas las leetras del alfabeto"
end
#aplicacion
cadena=" quick brown box jumps over a lazy dog "
#cadena= "abcdefghijklmnopqrstvwyzx" #falta la u
letra=letra(cadena)
puts " la letra que falta es: #{letra}"