package br.com.profPerfeito.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

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

	public List<Curso> listarTelaInicial(int limit) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		List<Curso> lista = manager.createQuery("FROM Curso ORDER BY titulo desc").setMaxResults(limit).getResultList();
		manager.close();
		factory.close();
		return lista;
	}

	public Curso buscarPorId(int id) {
		Curso obj = null;
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(Curso.class, id);
		manager.close();
		factory.close();
		return obj;
	}

	public List<Curso> listarCursoPerfil(int cursoPerfil) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = null;

		int perfil = cursoPerfil;
		query = manager.createQuery("FROM Curso WHERE professor_idprofessor LIKE :paramCursoPerfil");
		query.setParameter("paramCursoPerfil", "%" + perfil + "%");

		List<Curso> lista = query.getResultList();
		manager.close();
		factory.close();
		return lista;
	}

	public List<Curso> buscar(String curso) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = null;

		String buscar = curso;

		query = manager.createQuery("FROM Curso WHERE titulo LIKE :paramTitulo OR subMateria LIKE:paramTitulo");
		query.setParameter("paramTitulo", "%" + buscar + "%");

		List<Curso> lista = query.getResultList();
		manager.close();
		factory.close();
		return lista;

	}
	
	public void alterar(Curso curso) {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.merge(curso);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
		}
	

}
