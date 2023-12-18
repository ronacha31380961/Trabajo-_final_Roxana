<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to- fit=no">
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

        <div class="row">
            <div class="col">

                <div id="carrouselBsAs" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="img/ba1.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="img/ba2.jpg" class="d-block w-100" alt="...">
                    </div>
                    <div class="carousel-item">
                        <img src="img/ba3.jpg" class="d-block w-100" alt="...">
                    </div>
                    </div>
                </div>

                <div class = "container" id="contenidoBsAs">
                    <div class="row">
                        <div class="col">   
                        </div>
                        <div class="col">   
                            <br><br><br><br><br><br><br><br><br><br><br><br>
                            <h3>Conf Bs As</h3> 
                            <br>
                            <h5>Buenos Aires llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y la experiencia de los expertos que están creando el futuro de internet. Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!</h5> 
                            <br>
                            <div class="col">   
                            </div>
                            <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                                <a href="#tituloRegistroOrador">
                                <button type="button" class="btn btn-outline-light me-md-2">Quiero ser orador</button>
                                </a>
                                <a href="FrontController?accion=tickets">
                                    <button type="button" class="btn btn-success">Comprar tickets</button>
                                </a>
                              </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <br><br> <br> <br><br><br> <br><br> <br>
      
        <div class="row">
          <div class="col" id="tituloOradores">
            <h6>CONOCE A LOS</h6> 
          </div>
        </div>
              
        <div class="row">
          <div class="col" id="tituloOradores">
          <h4>ORADORES</h4> 
          </div>
        </div>

        <div class="row row-cols-1 row-cols-md-3 g-3">
            
            <div class="col">
              <div class="card">
                <img src="img/steve2.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                  <span class="badge bg-warning text-dark">JavaScript</span>
                  <span class="badge bg-primary">React</span>
                  <h4 class="card-title">Steve Jobs</h4>
                  <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore, veniam illum iste quasi mollitia dolore incidunt quo minus iure perferendis?</p>
                </div>
              </div>
            </div>
  
            <div class="col">
              <div class="card">
                <img src="img/bill.jpg" class="card-img-top" alt="...">
                  <div class="card-body">
                    <span class="badge bg-warning text-dark">JavaScript</span>
                    <span class="badge bg-primary">React</span>
                    <h4 class="card-title">Bill Gates</h4>
                    <p class="card-text">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Tenetur eum sit sunt et aperiam eius iste, perferendis nisi! Distinctio, vitae.</p>
                  </div>
              </div>
            </div>
              
            <div class="col">
              <div class="card">
                <img src="img/ada.jpeg" class="card-img-top" alt="...">
                  <div class="card-body">
                    <span class="badge bg-secondary">Negocios</span>
                    <span class="badge bg-danger">Startup</span>
                    <h4 class="card-title">Ada Lovelace</h4>
                    <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Alias cupiditate labore consequuntur voluptatem tempora repellendus inventore, in blanditiis sit fuga!</p>
                  </div>
              </div>
            </div>
        </div>
            
            <br>

        
        <div class="row">
            <div class="col-6">
                <img src="img/honolulu.jpg" class="img-fluid" >
                    
            </div>
    
            <div class="col-6" id="contenidoBuenosAires">
                <br>
                <h4>Bs As - Octubre</h4> 
                <br>
                <h6>Buenos Aires es la provincia y localidad mas grande de Argentina, en Estados Unidos, Honolulú es la mas sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulú se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el 
                condado de Honolulú han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600 km2 de superficie).</h6> 
                <br>
                <p>
                
                <button type="button" class="btn btn-outline-light">Conocé más</button>
                </p>  
            </div>
            </div>

        <div class="row">
              <div class="col" id="tituloRegistroOrador">
                <br>
                <h6>CONVIERTETE EN UN</h6> 
                <h4>ORADOR</h4> 
                <h6> Anotáte como orador para dar una <u>charla ignite</u>. Cuéntanos de que quieres hablar! </h6>

              </div>
        </div>

        
            
                   
        <div class="row">
            <div class="col-3">
            </div>
            <div class="col-6">
                    
              <form class="row row-gap-3" id="formOradores">
                <div class="col-md-6">
                    <input type="text" class="form-control" id="inputNombre" placeholder="Nombre">
                </div>
                <div class="col-md-6">
                  <input type="text" class="form-control" id="inputApellido" placeholder="Apellido">
                </div>
                <div class="col-12">
                <br>
                  <textarea class="form-control" id="TemaCharla" placeholder="Sobre que quieres hablar?" rows="3"></textarea>
                </div>
                <div class="col-12">
                   <h6> Recuerda incluir un título para tu charla </h6>
                   <br>
                </div>        
                <div class="col-12">
                  <div class="d-grid gap-2">
                    <button type="button" class="btn btn-success btn-enviar">Enviar</button>
                  </div>
                  <br>
                </div>
              </form>
            </div>
  
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
    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </body>
</html>