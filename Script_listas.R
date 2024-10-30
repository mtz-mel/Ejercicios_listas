## Ejercicio 1
lista_vmd <- list (
  vector = sample(c(10:30), size = 10, replace = TRUE),
  matriz = matrix(10:30, ncol = 2),
  data = data.frame(
    comida_rapida = c("hamburguesa", "pizza", "hot dog", "pollo frito" ),
    refrescos = c("manzanita", "pepsi", "coca-cola", "jarritos"))
)

print(lista_vmd[[1]])

print(lista_vmd[[2]])

print(lista_vmd[[3]])

## Ejercicio 2

edades_de_mayor_consumo <- c(10,15,20,25,30)
append(lista_vmd, edades_de_mayor_consumo) 

## Ejercicio 3
fermentacion <- list(
  experimento1 = list(Cepa = "S.cerevisiae1", condicion = "Aerobica", produccion_etanol = 30),
  experimento2 = list(Cepa = "S.cerevisiae2", condicion = "Anaerobica", produccion_etanol = 50),
  experimento3 = list(Cepa = "S.cerevisiae3", condicion = "Microaerofílica", produccion_etanol = 40),
  experimento4 = list(Cepa = "S.cerevisiae4", condicion = "Anaerobica con suplemento", produccion_etanol = 60)
)

mejor_produccion <- 0
mejor_condicion <- ""

for (experimento in fermentacion) {
  if (experimento$produccion_etanol > mejor_produccion) {
    mejor_produccion <- experimento$produccion_etanol
    mejor_condicion <- experimento$condicion
  }
}

print(mejor_produccion)
print(mejor_condicion)
