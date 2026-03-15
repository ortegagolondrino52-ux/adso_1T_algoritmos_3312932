import pandas as pd # type:ignore
import os

# 5 productos, codigo, nombre, precio y cantidad
datos = {
    'codigo': ['P01', 'P02', 'P03', 'P04', 'P05'],
    'nombre': ['Teclado RGB', 'Mouse inalambrico', 'Monitor 4k', 'Audifonos inalambricos', 'Cable HDMI'],
    'precio': [60000, 35000, 500000, 90000, 10000],
    'cantidad': [18, 15, 5, 22, 35]
}

# 1 Creacion del data frame
df_inventario = pd.DataFrame(datos)

# 2. Asegurar que el archivo CSV se cree en la misma carpeta
script_dir = os.path.dirname(os.path.abspath(__file__))
csv_path = os.path.join(script_dir, 'inventario.csv')

# 3. Creacion del archivo CSV
df_inventario.to_csv(csv_path, index=False, encoding='utf-8')
print("Archivo 'inventario.csv' creado exitosamente.\n")

# 4. Leer el archivo CSV y mostrar todos los registros
df_leido = pd.read_csv(csv_path)
print(":) Lista de productos (:")
print(df_leido.to_string(index=False))

# Valor total del inventario 
# Se multiplican las columnas de precio y cantidad, y luego se suma el resultado
valor_total = (df_leido['precio'] * df_leido['cantidad']).sum()

print("-" * 30)
print(f"Valor total del inventario: ${valor_total:,}")