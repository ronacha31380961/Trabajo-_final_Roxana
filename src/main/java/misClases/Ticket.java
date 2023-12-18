package misClases;

public class Ticket {

	private int id;
	private String nombre;
	private String apellido;
	private String mail;
	private int cant;
	private int tipoTicket;
	private float totalFacturado;
	
	public Ticket(int id, String nombre, String apellido, String mail, int cant, int tipoTicket,
			float totalFacturado) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.mail = mail;
		this.cant = cant;
		this.tipoTicket = tipoTicket;
		this.totalFacturado = totalFacturado;
		
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}

	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public int getCant() {
		return cant;
	}

	public void setCant(int cant) {
		this.cant = cant;
	}

	public int getTipoTicket() {
		return tipoTicket;
	}

	public void setTipoTicket(int tipoTicket) {
		this.tipoTicket = tipoTicket;
	}

	public float getTotalFacturado() {
		return totalFacturado;
	}

	public void setTotalFacturado(float totalFacturado) {
		this.totalFacturado = totalFacturado;
	}
	
	
}
