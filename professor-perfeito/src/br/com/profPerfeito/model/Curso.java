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
@Table(name = "curso")
public class Curso {
	
	@Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	 private int idcurso;
	
	@ManyToOne
	@JoinColumn(name = "professor_idprofessor")
	 private Professor professor;
	
	@ManyToOne
	@JoinColumn(name = "materia_idmateria")
	 private Materia materia;
	
	@Column
	 private String subMateria;

	@Column
	 private String competencia;
	 @Column
	 private String ministra;
	 @Column
	 private String aulasCasa;
	 @Column
	 private String aulasWebcam;
	 @Column
	 private String aulasAluno;
	 @Column
	 private String titulo;
	 @Column
	 private String imagem;
	 @Column
	 private String metodologia;
	 @Column
	 private String apresentacao;
	 @Column
	 private int cep;
	 @Column
	 private String cidade;
	 @Column
	 private String bairro;
	 @Column
	 private String estado;
	 @Column
	 private String rua;
	 @Column
	 private double valorHora;
	 @Column
	 private double valorDeslocamento;
	 @Column
	 private double valorWeb;
	 @Column
	 private double valorPacote;
	 
	public int getIdcurso() {
		return idcurso;
	}
	public void setIdcurso(int idcurso) {
		this.idcurso = idcurso;
	}
	
	
	public String getCompetencia() {
		return competencia;
	}
	public void setCompetencia(String competencia) {
		this.competencia = competencia;
	}
	public String getMinistra() {
		return ministra;
	}
	public void setMinistra(String ministra) {
		this.ministra = ministra;
	}
	public String getAulasCasa() {
		return aulasCasa;
	}
	public void setAulasCasa(String aulasCasa) {
		this.aulasCasa = aulasCasa;
	}
	public String getAulasWebcam() {
		return aulasWebcam;
	}
	public void setAulasWebcam(String aulasWebcam) {
		this.aulasWebcam = aulasWebcam;
	}
	public String getAulasAluno() {
		return aulasAluno;
	}
	public void setAulasAluno(String aulasAluno) {
		this.aulasAluno = aulasAluno;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	public String getMetodologia() {
		return metodologia;
	}
	public void setMetodologia(String metodologia) {
		this.metodologia = metodologia;
	}
	public String getApresentacao() {
		return apresentacao;
	}
	public void setApresentacao(String apresentacao) {
		this.apresentacao = apresentacao;
	}
	public int getCep() {
		return cep;
	}
	public void setCep(int cep) {
		this.cep = cep;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	public String getBairro() {
		return bairro;
	}
	public void setBairro(String bairro) {
		this.bairro = bairro;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getRua() {
		return rua;
	}
	public void setRua(String rua) {
		this.rua = rua;
	}
	public double getValorHora() {
		return valorHora;
	}
	public void setValorHora(double valorHora) {
		this.valorHora = valorHora;
	}
	public double getValorDeslocamento() {
		return valorDeslocamento;
	}
	public void setValorDeslocamento(double valorDeslocamento) {
		this.valorDeslocamento = valorDeslocamento;
	}
	public double getValorWeb() {
		return valorWeb;
	}
	public void setValorWeb(double valorWeb) {
		this.valorWeb = valorWeb;
	}
	public double getValorPacote() {
		return valorPacote;
	}
	public void setValorPacote(double valorPacote) {
		this.valorPacote = valorPacote;
	}
	public Professor getProfessor() {
		return professor;
	}
	public void setProfessor(Professor professor) {
		this.professor = professor;
	}
	 public Materia getMateria() {
		return materia;
	}
	public void setMateria(Materia materia) {
		this.materia = materia;
	}
	public String getSubMateria() {
		return subMateria;
	}
	public void setSubMateria(String subMateria) {
		this.subMateria = subMateria;
	}
	
	 

}
