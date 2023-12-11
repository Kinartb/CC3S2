def grep(cadena_busqueda, archivos, opciones)
  resultados = []

  archivos.each do |nombre_archivo|
    begin
      File.open(nombre_archivo, 'r').each_with_index do |linea, numero_linea|
        linea.chomp!
        linea_para_coincidencia = opciones[:coincidir_linea_completa] ? linea : linea.downcase
        cadena_busqueda_minusculas = opciones[:ignorar_mayusculas] ? cadena_busqueda.downcase : cadena_busqueda

        if (linea_para_coincidencia.include?(cadena_busqueda_minusculas) ^ opciones[:invertir_coincidencia])
          resultado_linea = opciones[:mostrar_nombres_archivo] ? "#{nombre_archivo}:" : ''
          resultado_linea += opciones[:mostrar_numeros_linea] ? "#{numero_linea + 1}:" : ''
          resultado_linea += linea
          resultados << resultado_linea
        end
      end
    rescue Errno::ENOENT
      puts "El archivo #{nombre_archivo} no se encontró."
    end
  end

  resultados
end

# Obtener argumentos de la línea de comandos
cadena_busqueda = ARGV.shift
archivos = ARGV.select { |arg| !arg.start_with?('-') }
opciones = { mostrar_numeros_linea: false, mostrar_nombres_archivo: false, ignorar_mayusculas: false, invertir_coincidencia: false, coincidir_linea_completa: false }

# Configurar opciones según los indicadores proporcionados
ARGV.each do |bandera|
  case bandera
  when '-n'
    opciones[:mostrar_numeros_linea] = true
  when '-l'
    opciones[:mostrar_nombres_archivo] = true
  when '-i'
    opciones[:ignorar_mayusculas] = true
  when '-v'
    opciones[:invertir_coincidencia] = true
  when '-x'
    opciones[:coincidir_linea_completa] = true
  end
end

# Ejecutar la búsqueda
resultados = grep(cadena_busqueda, archivos, opciones)

# Imprimir resultados
puts resultados


#SE EJECUTA CON ruby script_grep.rb cadena_a_buscar archivo1.txt archivo2.txt -n -i
