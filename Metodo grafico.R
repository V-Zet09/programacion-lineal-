# Ejemplo:
# Una empresa esta interesada en desarrollar un abono que contenga
# como minimo 130 unidades de potasa, 33 de nitrogeno y 16 de amoniaco
# para ello se dispone de los productos A y B coste en el mercado asciende
# a 450 y 375 euros por toneladas respectivamente.El contenido de potasa
# nitrogeno y amoniaco de una tonelada de producto en la tabla siguiente:

#        Potasa	Nitrógeno 	Amoniaco 
#Abono a 	2.3   0.4	        0.3
#Abono b	1.7 	0.7	        0.3

# Desarrolle el nuevo abono tomando en consideración que 
# se desea que dicho abono cueste lo menos posible.

# Resolucion mediante el metodo grafico 

#Variables básicas 
#X1:abono A
#X2:abono B 

#Variables CJ 
#C1= $450/abono A 
#C2= $374/ abono B 

#Función objetivo  
#Min=(450XA+375XB)

#Identificar “bj”
#b1= Minima cantidad de potasio (130)
#b2=Minima cantidad de nitrógeno (33)
#b3=Minima cantidad de amoniaco(16)

#identificar “aij”
#b1= cantidad de toneladas de potasio (130)
# *abono A= 2.3 
# *abono B=1.7
#b2= cantidad de toneladas de nitrógeno (33)
# *abono A = 0.4 
# *abono B= 0.7 
#b3= cantidad de toneladas de amoniaco 
# *abono A= 0.3	
# *abono B=0.3 

# Restricciones 
# potasa=2.3 x1+1.7x2 ≥130 
# nitrogeno=0.4x1+0.7x2 ≥33	
# amoniaco=0.3x1+0.3x2 ≥16

# No negatividad 
# Xa,Xb≥0

# Modelo general 
# Minz= (450X1 + 375x2)
# 2.3 x1+1.7 x2≥130 
# 0.4 x1+0.7 x2≥33
# 0.3 x1+0.3 x2≥16
# x1+ x2≥0

#paso 9 Graficar el sistema 

library(matlib)
# Asignar los coeficientes de las restricciones
# 2.3 x1+1.7 x2 >= 130    2.3   1.7       (1)   
# 0.4x1+0.7 x2  >= 33     0.4   0.7       (2)
# 0.3x1+0.3 x2  >= 16     0.3   0.3       (3)
#definir el numero de columnas en 2 y el numero de filas en 3
A<-matrix(c(2.3,0.4,0.3,1.7,0.7,0.3), ncol = 2, nrow = 3)

#Asignar los valores del lado derecho de las desigualdades
# 2.3 x1+1.7 x2 >= 130    130       (1)   
# 0.4x1+0.7 x2  >= 33     33        (2)
# 0.3x1+0.3 x2  >= 16     16        (3)

b<- c(130,33,16)

# Se grafican las ecuaciones
plotEqn(A,b, xlim =c(0,91), labels=TRUE)


