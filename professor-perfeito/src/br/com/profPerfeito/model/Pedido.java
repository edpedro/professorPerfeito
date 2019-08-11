package br.com.profPerfeito.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "pedido")
public class Pedido {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idpedido;
	
	@ManyToOne
	@JoinColumn(name = "curso_idcurso")
	private Curso curso;
	
	@ManyToOne	
	@JoinColumn(name = "usuario_idusuario")	
	private Usuario usuario;
	
	@Column
	private String data_inicial;
	@Column
	private String data_termino;
	@Column
	private String espera;
	@Column
	private String andamento;
	@Column
	private String ministrar;
	@Column
	private String nome_estudade;
	@Column
	private String titula_conta;
	@Column
	private String materia;
	@Column
	private String onde_aula;	
	@Column
	private String comentario;
	@Column
	private String endereco;
	@Column
	private String contato;
	
	
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public Curso getCurso() {
		return curso;
	}
	public void setCurso(Curso curso) {
		this.curso = curso;
	}
	public int getIdpedido() {
		return idpedido;
	}
	public void setIdpedido(int idpedido) {
		this.idpedido = idpedido;
	}
	public String getData_inicial() {
		return data_inicial;
	}
	public void setData_inicial(String data_inicial) {
		this.data_inicial = data_inicial;
	}
	public String getData_termino() {
		return data_termino;
	}
	public void setData_termino(String data_termino) {
		this.data_termino = data_termino;
	}
	public String getEspera() {
		return espera;
	}
	public void setEspera(String espera) {
		this.espera = espera;
	}
	public String getAndamento() {
		return andamento;
	}
	public void setAndamento(String andamento) {
		this.andamento = andamento;
	}
	public String getMinistrar() {
		return ministrar;
	}
	public void setMinistrar(String ministrar) {
		this.ministrar = ministrar;
	}
	public String getNome_estudade() {
		return nome_estudade;
	}
	public void setNome_estudade(String nome_estudade) {
		this.nome_estudade = nome_estudade;
	}
	public String getTitula_conta() {
		return titula_conta;
	}
	public void setTitula_conta(String titula_conta) {
		this.titula_conta = titula_conta;
	}
	public String getMateria() {
		return materia;
	}
	public void setMateria(String materia) {
		this.materia = materia;
	}
	public String getOnde_aula() {
		return onde_aula;
	}
	public void setOnde_aula(String onde_aula) {
		this.onde_aula = onde_aula;
	}
	public String getComentario() {
		return comentario;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	public String getEndereco() {
		return endereco;
	}
	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}
	public String getContato() {
		return contato;
	}
	public void setContato(String contato) {
		this.contato = contato;
	}
	
	
	

}
