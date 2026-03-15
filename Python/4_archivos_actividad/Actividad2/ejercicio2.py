import pandas as pd # type:ignore

# Ruta donde de se encuentra el archivo CSV para leerlo
df = pd.read_csv(r"C:\Users\JOSE DAVID\Downloads\J\Nueva carpeta\Python\4_archivos_actividad\Actividad1\inventario.csv")

# Producto más costoso
producto_costoso = df.loc[df["precio"].idxmax()]
print("Producto más costoso:")
print(producto_costoso)

# Producto con mayor cantidad
producto_mayor_cantidad = df.loc[df["cantidad"].idxmax()]
print("\nProducto con mayor cantidad:")
print(producto_mayor_cantidad)

# Nueva columna valor_total
df["valor_total"] = df["precio"] * df["cantidad"]

# Guardar archivo actualizado
df.to_csv("inventario_actualizado.csv", index=False)

print("\nArchivo inventario_actualizado.csv creado.")