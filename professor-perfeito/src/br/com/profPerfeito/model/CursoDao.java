package br.com.profPerfeito.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class CursoDao {
	
	private static final String PERSISTENCE_UNIT = "profPerfeito";

	public void salvar(Curso curso) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(curso);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}
	public List<Curso> listar() {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		List<Curso> lista = manager.createQuery("FROM Curso ORDER BY titulo").getResultList();
		manager.close();
		factory.close();
		return lista;
		}
	public Curso buscarPorId(int id) {
		Curso obj = null;
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(Curso.class, id);
		manager.close();
		factory.close();
		return obj;
		}
}
