package br.com.profPerfeito.model;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class AlunoDao {

	private static final String PERSISTENCE_UNIT = "profPerfeito";

	public void salvar(Aluno aluno) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(aluno);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}
}
