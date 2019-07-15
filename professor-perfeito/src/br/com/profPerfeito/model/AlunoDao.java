package br.com.profPerfeito.model;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

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
	
	public Aluno buscarUsuario(Aluno aluno) {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("FROM Aluno WHERE email LIKE :paramEmail AND senha LIKE :paramSenha");
		query.setParameter("paramEmail", aluno.getEmail());
		query.setParameter("paramSenha", aluno.getSenha());
		List<Aluno> registros = query.getResultList();
		Aluno obj = null;
		if (!registros.isEmpty()) {
		 obj = (Aluno) registros.get(0);
		}
		manager.close();
		factory.close();
		return obj;
		}
	public Aluno buscarEmailAlun(Aluno aluno) {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = manager.createQuery("FROM Aluno WHERE email LIKE :paramEmail AND senha LIKE :paramSenha");
		query.setParameter("paramEmail", aluno.getEmail());
		query.setParameter("paramSenha", aluno.getSenha());
		List<Aluno> registros = query.getResultList();
		Aluno obj = null;
		if (!registros.isEmpty()) {
		 obj = (Aluno) registros.get(0);
		}
		manager.close();
		factory.close();
		return obj;
		}
	public List<Aluno> buscarEmailAluno(Aluno aluno) {
		EntityManagerFactory factory =
		Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		Query query = null;	
		query = manager.createQuery("FROM Aluno WHERE email LIKE :paramEmail");
		query.setParameter("paramEmail", "%" + aluno.getEmail() + "%");
		query = manager.createQuery("FROM Professor WHERE email LIKE :paramEmail");
		query.setParameter("paramEmail", "%" + aluno.getEmail() + "%");
		List<Aluno> lista = query.getResultList();
		manager.close();
		factory.close();
		return lista;
		}
}
