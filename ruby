from tkinter import *
from tkinter import messagebox

#--------------------
# VARIABLES GLOBALES 
#--------------------

# convertir
def jugar():
      messagebox.showinfo("listo para correr")



BASE = 900
ALTURA = 450

ventana_principal = Tk()
ventana_principal.title("Graficas 2D")
ventana_principal.resizable(False, False)
ventana_principal.geometry("900x450")
ventana_principal.config(bg="white")


frame_graficacion = Frame(ventana_principal)
frame_graficacion.config(bg="purple", width=900, height=450)
frame_graficacion.place(x=0, y=0)

c = Canvas(frame_graficacion, width=850, height=410)
c.config(bg="black")
c.place(x=25, y=18)

rectangulo = c.create_rectangle(0,0-100,0+120,ALTURA ,fill="firebrick1" )
rectangulo = c.create_rectangle(0+730,ALTURA/2-300,BASE,ALTURA ,fill="CadetBlue1" )
rectangulo = c.create_rectangle(0+120,ALTURA/2-20,BASE/2+280,ALTURA/2+200 ,fill="ivory4" )
rectangulo = c.create_rectangle(0+120,0-300,BASE/2+280,ALTURA/2-10 ,fill="ivory4" )

# boton para convertir
bt_convertir = Button(frame_graficacion,text="JUGAR", command=jugar)
bt_convertir.place(x=400, y=220, width=100, height=30)


# logo de la app
logo = PhotoImage(file="img/carrito2.png")
lb_logo = Label(c, image=logo, bg="white")
lb_logo.place(x=25,y=300)

logo2 = PhotoImage(file="img/carritorojo.png")
lb_logo2 = Label(c, image=logo, bg="black")
lb_logo2.place(x=25, y=60)

ventana_principal.mainloop()