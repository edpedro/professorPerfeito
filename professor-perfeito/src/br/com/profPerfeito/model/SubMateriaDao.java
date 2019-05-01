package br.com.profPerfeito.model;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class SubMateriaDao {
	
	private static final String PERSISTENCE_UNIT = "profPerfeito";
	public void salvar(SubMateria subMateria) {
	EntityManagerFactory factory =
	Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
	EntityManager manager = factory.createEntityManager();
	manager.getTransaction().begin();
	manager.persist(subMateria);
	manager.getTransaction().commit();
	manager.close();
	factory.close();
	}
	
	public SubMateria buscarPorId(int id) {
		SubMateria obj = null;
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(SubMateria.class, id);
		manager.close();
		factory.close();
		return obj;
		}

}
