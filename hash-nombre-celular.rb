# Definir el hash con nombres y números de celular
agenda = {
  "Juan" => "8265-4536",
  "Maria" => "2248-6559",
  "Pedro" => "9845-6532",
  "Alberto" => "7896-4514"
}

# Método para buscar un número de celular basado en el nombre
def buscar_celular(agenda)
  loop do
    puts "Ingresa el nombre (o presiona 'q' para salir):"
    nombre = gets.chomp.capitalize # Capitalizar el nombre para coincidir con la clave

    break if nombre.downcase == 'q' # Salir si se presiona 'q'

    if agenda.has_key?(nombre)
      puts "El número de celular de #{nombre} es: #{agenda[nombre]}"
    else
      puts "Nombre no encontrado en la agenda."
    end
  end
end

# Mostrar el hash completo
puts "Agenda de contactos:"
agenda.each { |nombre, celular| puts "#{nombre}: #{celular}" }

# Ejecutar la búsqueda
buscar_celular(agenda)