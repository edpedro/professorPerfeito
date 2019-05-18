package br.com.profPerfeito.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

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
	
	public List<SubMateria> listar(Integer idMateria) {

		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = null;	
		if (idMateria != null) {
		    query = manager
			    .createQuery("FROM SubMateria WHERE materia_idmateria LIKE :paramMateria ORDER BY subMateria");
		    query.setParameter("paramMateria", idMateria);
		} else {
		    query = manager.createQuery("FROM SubMateria ORDER BY subMateria");
		} 
		List<SubMateria> lista = query.getResultList();
		
		manager.close();
		factory.close();

		return lista;
	    }


	
	
}
