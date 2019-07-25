package br.com.profPerfeito.converters;

import org.springframework.core.convert.converter.Converter;

import br.com.profPerfeito.model.Usuario;
import br.com.profPerfeito.model.UsuarioDao;

public class UsuarioConverter implements Converter<String, Usuario> {
	
	public Usuario convert(String id) {
		UsuarioDao dao = new UsuarioDao();
		return dao.buscarPorId(Integer.valueOf(id));
		 }


}
