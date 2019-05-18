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
@Table(name = "submateria")
public class SubMateria {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idsubMateria;
	@Column
	private String subMateria;

	@ManyToOne
	@JoinColumn(name = "materia_idmateria")
	private Materia materia;

	public int getIdsubMateria() {
		return idsubMateria;
	}

	public void setIdsubMateria(int idsubMateria) {
		this.idsubMateria = idsubMateria;
	}

	public String getSubMateria() {
		return subMateria;
	}

	public void setSubMateria(String subMateria) {
		this.subMateria = subMateria;
	}

	public Materia getMateria() {
		return materia;
	}

	public void setMateria(Materia materia) {
		this.materia = materia;
	}
	
	

}
