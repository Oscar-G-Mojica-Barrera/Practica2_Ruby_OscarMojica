class Calcular def suma_pares(maximo)
    (1..maximo).select { |n| n.even? }.sum
end 
def suma_impares(maximo)
    (1..maximo).select { |n| n.odd? }.sum
  end
end# Solicitar el número máximo al usuario
puts "Ingresa un número máximo:"
maximo = gets.chomp.to_i

# Crear una instancia de la clase y realizar los cálculos
calcular = Calcular.new
pares = calcular.suma_pares(maximo)
impares = calcular.suma_impares(maximo)

# Mostrar los resultados
puts "La suma de los números pares desde 1 hasta #{maximo} es: #{pares}"
puts "La suma de los números impares desde 1 hasta #{maximo} es: #{impares}"