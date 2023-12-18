<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="./css/style.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    </head>
    <body>

     
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
            <div class="container">
                <a class="navbar-brand" href="FrontController?accion=conferencia">
                <img src="img/codoacodo.png" alt="" width="50" height="35" class="d-inline-block align-text-top">
                        
                Conf Bs As</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="MenuPrincipal">
                    <ul class="navbar-nav mx-auto">
                		 <li class="nav-item">
                            <a class="nav-link" aria-current="page" href=#>La conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href=#>Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href=#>El lugar y la fecha</a>
                        <li class="nav-item">
                            <a class="nav-link" href=#>Conviertete en orador</a>
                        </li>
                               <li class="nav-item">
                            <a class="nav-link" href="FrontController?accion=tickets" tabindex="-1" aria-disabled="true" id="LinkTickets">Comprar tickets</a>
                        </li>
             			<li class="nav-item">
                            <a class="nav-link text-warning" href="FrontController?accion=backoffice" tabindex="-1" aria-disabled="true" id="LinkBackOffice">BackOffice</a>
                        </li>
                           </ul>
                </div>
            </div>
        </nav>

        <br>

        <div class="container w-50">
            <div class="row justify-content-md-center g-0" id="grupoDescuentos">
                <div class="col-md-4">
                    <div class="custom-border Estudiante">
                        <p class="tituloDescuento">Estudiante </p>
                        <p class="textoDescuento">Tienen un descuento </p>
                        <p class="porcDescuento" id="porcDescEstudiante"> </p>
                        <p class="notaDescuento">* presentar documentación </p>
                        
                        
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="custom-border Trainee">
                        <p class="tituloDescuento">Trainee </p>
                        <p class="textoDescuento">Tienen un descuento </p>
                        <p class="porcDescuento" id="porcDescTrainee"> </p>
                        <p class="notaDescuento">* presentar documentación </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="custom-border Junior">
                        <p class="tituloDescuento">Junior </p>
                        <p class="textoDescuento">Tienen un descuento </p>
                        <p class="porcDescuento" id="porcDescJunior"> </p>
                        <p class="notaDescuento">* presentar documentación </p>
                       
                    </div>
                </div>
            </div>
        </div>
        
        <div class="row">
            <div class="col" id="tituloTickets">
              
              <h6>VENTA</h6> 
              <h4 id="valorTicket">VALOR DE TICKET</h4>
              <br>
            </div>
        </div>

        <div class="container w-50">

        <form class="row justify-content-md-center" id="formTickets" action = "FrontController?accion=comprar" method="post" >
            <div class="col-md-6">
            
               <input type="hidden" class="form-control" name="total" id="inputTotal" >
      
              <input type="text" class="form-control" name= "nombre" id="inputNombre" placeholder="Nombre" required>
            </div>
            <div class="col-md-6">
              <input type="text" class="form-control" name="apellido" id="inputApellido" placeholder="Apellido" required>
            </div>
            <div class="col-12">
                <br>
              <input type="email" class="form-control" name="mail" id="inputCorreo" placeholder="Correo" required>
            </div>
            <div class="col-md-6">
              <label for="inputCantidad" class="form-label">Cantidad</label>
              <input type="number" class="form-control" name="cant" id="inputCantidad" min="0" required>
            </div>
            <div class="col-md-6">
              <label for="inputCategoria" class="form-label">Categoria</label>
              <select id="selCategoria" class="form-select" name="categoria" required>
                <option value="0">Estudiante</option>
                <option value="1">Trainee</option>
                <option value="2">Junior</option>
              </select>
            </div>
       
       

            <div class="col-12">
            <br>
            <div class="p-3" id="cuadroTotalAPagar" >
                <p>Total a pagar: $ <a id="textoTotalAPagar"> </a></p> 
                <div class="custom-textarea" contenteditable="false" ></div>
            </div>
            <br>
            </div> 
      
 			<div class="d-flex">
                <button class="btn btn-success flex-fill me-1" type="button" id="btnBorrar">Borrar</button>
                <button class="btn btn-success flex-fill ms-1" type="submit" id="btnComprar">Comprar</button>
              </div>
   
          </form>
          <br>
        </div>
    

      
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark" id="menuInferior">
            <div class="container" >
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse"  >
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Preguntas frecuentes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Contáctanos</a>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Prensa</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Conferencias</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Términos y Condiciones</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Privacidad</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Estudiantes</a>
                        </li>
                    
                    </ul>
                </div>
            </div>
        </nav>
    
        <script src="./js/tickets.js"> </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
   
    </body>
</html>