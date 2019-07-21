package br.com.profPerfeito.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

@Entity
@Table(name = "curso")
public class Curso {

	

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idcurso;

	@ManyToOne	
	@JoinColumn(name = "professor_idprofessor")
	@OnDelete(action = OnDeleteAction.CASCADE)
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
	private String metodologia;
	@Column
	private String apresentacao;
	@Column
	private String valorHora;
	@Column
	private String valorDeslocamento;
	@Column
	private String valorWeb;
	@Column
	private String valorPacote;
	@Column
	private String formacao;
	

	public String getFormacao() {
		return formacao;
	}

	public void setFormacao(String formacao) {
		this.formacao = formacao;
	}

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

	public String getValorHora() {
		return valorHora;
	}

	public void setValorHora(String valorHora) {
		this.valorHora = valorHora;
	}

	public String getValorDeslocamento() {
		return valorDeslocamento;
	}

	public void setValorDeslocamento(String valorDeslocamento) {
		this.valorDeslocamento = valorDeslocamento;
	}

	public String getValorWeb() {
		return valorWeb;
	}

	public void setValorWeb(String valorWeb) {
		this.valorWeb = valorWeb;
	}

	public String getValorPacote() {
		return valorPacote;
	}

	public void setValorPacote(String valorPacote) {
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
