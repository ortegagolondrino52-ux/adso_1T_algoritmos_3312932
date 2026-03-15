# - Clase para la relación de Asociación -
class Contrato:
    def __init__(self, id_contrato, tipo):
        self.id_contrato = id_contrato
        self.tipo = tipo

# - Clase Base 
class Empleado:
    def __init__(self, identificacion, nombre, salario, contrato):
        # Atributos privados/protegidos (Encapsulamiento)
        self._identificacion = identificacion 
        self._nombre = nombre
        self._salario = salario
        self.contrato = contrato  # Asociación: Un Empleado tiene un Contrato

    #Polimorfismo 
    def calcular_bono(self):
        pass

    def obtener_datos(self):
        return f"ID: {self._identificacion} | Nombre: {self._nombre} | Contrato: {self.contrato.tipo}"

# --- Herencia y Polimorfismo ---
class Administrativo(Empleado):
    def calcular_bono(self):
        # El administrativo recibe un 15% de bono
        return self._salario * 0.15

class Operativo(Empleado):
    def calcular_bono(self):
        # El operativo recibe un 6% de bono
        return self._salario * 0.06

# - Relación de Composición -
class Departamento:
    def __init__(self, nombre_dep):
        self.nombre_dep = nombre_dep
        self.empleados = [] # Composición: El departamento gestiona sus empleados

    def agregar_empleado(self, empleado):
        self.empleados.append(empleado)

# - Relación de Agregación -
class Empresa:
    def __init__(self, nombre_empresa):
        self.nombre_empresa = nombre_empresa
        self.departamentos = [] # Agregación: La empresa tiene departamentos

    def registrar_departamento(self, departamento):
        self.departamentos.append(departamento)

# --- PRUEBA DEL SISTEMA ---
# 1. Crear Contratos
con1 = Contrato(101, "Término Indefinido")
con2 = Contrato(102, "Prestación de Servicios")

# 2. Crear Empleados (Polimorfismo en acción)
emp1 = Administrativo("123", "José David", 2500000, con1)
emp2 = Operativo("456", "Ronaldhino Gaucho", 1500000, con2)

# 3. Crear Estructura (Composición y Agregación)
dep_it = Departamento("Sistemas")
dep_it.agregar_empleado(emp1)
dep_it.agregar_empleado(emp2)

mi_empresa = Empresa("EDU Tech")
mi_empresa.registrar_departamento(dep_it)

# 4. Mostrar Resultados
print(f"Empresa: {mi_empresa.nombre_empresa}")
for dep in mi_empresa.departamentos:
    print(f"  Departamento: {dep.nombre_dep}")
    for e in dep.empleados:
        print(f"    - {e.obtener_datos()} | Bono: ${e.calcular_bono()}")
        
        
        
        
        
        
        
        
        
        
        
        