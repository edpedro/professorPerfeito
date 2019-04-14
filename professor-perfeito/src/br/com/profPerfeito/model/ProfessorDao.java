package br.com.profPerfeito.model;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class ProfessorDao {

	private static final String PERSISTENCE_UNIT = "profPerfeito";

	public void salvar(Professor professor) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(professor);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

}
