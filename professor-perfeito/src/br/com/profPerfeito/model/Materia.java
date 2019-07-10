package br.com.profPerfeito.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "materia")
public class Materia {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idmateria;

	@Column
	private String nome_materia;

	public String getNome_materia() {
		return nome_materia;
	}

	public void setNome_materia(String nome_materia) {
		this.nome_materia = nome_materia;
	}

	public int getIdmateria() {
		return idmateria;
	}

	public void setIdmateria(int idmateria) {
		this.idmateria = idmateria;
	}

	

}
