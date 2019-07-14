package br.com.profPerfeito.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

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
	public List<Professor> listar(String idProf) {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = null;
		
		String idTeste = idProf;
		query = manager.createQuery("FROM Professor WHERE idprofessor LIKE :paramIdTeste");
		query.setParameter("paramIdTeste", "%" + idTeste + "%");
		
		List<Professor> lista = query.getResultList();
		manager.close();
		factory.close();
		return lista;
		}
	public List<Professor> listarProfessorEditarPerfil(int idProf) {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = null;
		
		
		query = manager.createQuery("FROM Professor WHERE idprofessor LIKE :paramIdTeste");
		query.setParameter("paramIdTeste", "%" + idProf + "%");
		
		List<Professor> lista = query.getResultList();
		manager.close();
		factory.close();
		return lista;
		}
	
	public Professor buscarPorId(int id) {
		Professor obj = null;
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		obj = manager.find(Professor.class, id);
		manager.close();
		factory.close();
		return obj;
		}
	
	public Professor buscarProfessor(Professor professor) {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("FROM Professor WHERE email LIKE :paramEmail AND senha LIKE :paramSenha");
		query.setParameter("paramEmail", professor.getEmail());
		query.setParameter("paramSenha", professor.getSenha());
		List<Professor> registros = query.getResultList();
		Professor obj = null;
		if (!registros.isEmpty()) {
		 obj = (Professor) registros.get(0);
		}
		manager.close();
		factory.close();
		return obj;
		}	
	public void alterar(Professor professor) {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.merge(professor);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
		}
	public List<Professor> buscarEmailProfessor(Professor professor) {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = null;	
		query = manager.createQuery("FROM Professor WHERE email LIKE :paramEmail");
		query.setParameter("paramEmail", "%" + professor.getEmail() + "%");		
		List<Professor> lista = query.getResultList();
		manager.close();
		factory.close();
		return lista;
		}
	public Professor buscarProfessorID(Professor professor) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("FROM Professor WHERE Idprofessor LIKE :paramID");
		query.setParameter("paramID", professor.getIdprofessor());
		List<Professor> registros = query.getResultList();
		Professor obj = null;
		if (!registros.isEmpty()) {
			obj = (Professor) registros.get(0);
		}
		manager.close();
		factory.close();
		return obj;
	}
}
