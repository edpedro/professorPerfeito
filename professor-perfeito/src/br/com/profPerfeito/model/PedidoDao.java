package br.com.profPerfeito.model;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class PedidoDao {
	
	private static final String PERSISTENCE_UNIT = "profPerfeito";

	public void salvar(Pedido pedido) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(pedido);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

}
