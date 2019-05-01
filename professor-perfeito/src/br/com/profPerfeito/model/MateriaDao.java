package br.com.profPerfeito.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class MateriaDao {
	
	private static final String PERSISTENCE_UNIT = "profPerfeito";
	public void salvar(Materia materia) {
	EntityManagerFactory factory =
	Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
	EntityManager manager = factory.createEntityManager();
	manager.getTransaction().begin();
	manager.persist(materia);
	manager.getTransaction().commit();
	manager.close();
	factory.close();
	}
	
	public Materia buscarPorId(int id) {
		Materia obj = null;
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(Materia.class, id);
		manager.close();
		factory.close();
		return obj;
		}
	public List<Materia> listar() {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		List<Materia> lista = manager.createQuery("FROM Materia ORDER BY materia").getResultList();
		manager.close();
		factory.close();
		return lista;
		}
}
