package bean;

public class usuario {

	private String name;
	private String apellidos;
	private String email;
	private String password;
	
	public usuario(String name, String apellidos, String email, String password) {
        this.name = name;
        this.apellidos = apellidos;
        this.email = email;
        this.password = password;
    }
	
	public usuario() {
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
