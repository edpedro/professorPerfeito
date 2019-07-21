package br.com.profPerfeito.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class AnunciosDao {
	
	private static final String PERSISTENCE_UNIT = "profPerfeito";
	
	public void salvar(Anuncios anuncios) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(anuncios);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}
	
	public Anuncios buscarPorId(int id) {
		Anuncios obj = null;
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(Anuncios.class, id);
		manager.close();
		factory.close();
		return obj;
		}
	
	public List<Anuncios> listarAnunciosPerfil(int AnunciosPerfil) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = null;

		int Anuncios = AnunciosPerfil;
		query = manager.createQuery("FROM Anuncios WHERE professor_idprofessor LIKE :paramAnunciosPerfil");
		query.setParameter("paramAnunciosPerfil", "%" + Anuncios + "%");

		List<Anuncios> lista = query.getResultList();
		manager.close();
		factory.close();
		return lista;
	}
	public void remover(int id) {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Anuncios produto = manager.find(Anuncios.class, id);
		manager.getTransaction().begin();
		manager.remove(produto);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
		}
	public List<Anuncios> buscar(String anuncios) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = null;
		String buscar = anuncios;		
		query = manager.createQuery("FROM Anuncios WHERE titulo LIKE :paramTitulo1 OR subMateria LIKE:paramTitulo1");		
		query.setParameter("paramTitulo1", "%" + buscar + "%");
		

		List<Anuncios> lista = query.getResultList();
		manager.close();
		factory.close();
		return lista;

	}

}
