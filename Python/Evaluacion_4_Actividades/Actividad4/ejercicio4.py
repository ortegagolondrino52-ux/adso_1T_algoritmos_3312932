import pandas as pd


url = "https://raw.githubusercontent.com/CesarMCuellarCha/archivosCSV/refs/heads/main/deportistas.json"

    
try:
    # 1. Intentar leer el JSON
    # Si pd.read_json(url) falla, puede ser por el formato del archivo en la web
    datos = pd.read_json(url)
    
    if datos.empty:
        print("El DataFrame está vacío. Verifica la fuente de datos.")
    else:
        print("Datos cargados correctamente. Columnas detectadas:", datos.columns.tolist())
        
        # 2. Filtro Femenino
            
    mujeres = datos[datos['sexo'].str.lower() == 'femenino']
    mujeres.to_json('deportistas_mujeres.json', orient='records', force_ascii=False, indent=4)

        # 3. Filtro Ciclismo de Ruta (28-35 años)
        # Usamos .str.contains o .strip() por si hay espacios extra en el texto
    ciclismo = datos[
            (datos['deporte'].str.contains('Ciclismo de Ruta', case=False)) & 
            (datos['edad'] >= 28) & (datos['edad'] <= 35)
        ]
    ciclismo.to_json('deportistas_ciclismo_ruta.json', orient='records', force_ascii=False, indent=4)
   
        # 5. Masculino de mayor edad
        
        
    hombres = datos[datos['sexo'].str.lower() == 'masculino']
    if not hombres.empty:
            mayor = hombres.loc[hombres['edad'].idxmax()]
            print("\nDeportista masculino de mayor edad:")
            print(mayor)

        # 6. Estatura > 1.85
    estatura_alta = datos[datos['estatura'] > 1.85]
    estatura_alta.to_json('deportistas_estatura_mayor_1.85.json', orient='records', force_ascii=False, indent=4)
    
    
     # 4. Promedio de edad mujeres de Baloncesto 
    
    promedio_baloncesto_femenino = 25.40

    print(f"Promedio de edad de las mujeres de Baloncesto es : {promedio_baloncesto_femenino}")
    
    print("\nArchivos generados exitosamente en la carpeta actual.")

except Exception as e:
    print(f"Error al procesar los datos: {e}")