package br.com.profPerfeito.converters;

import org.springframework.core.convert.converter.Converter;

import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;

public class CursoConverter implements Converter<String, Curso> {
	
	public Curso convert(String id) {
		CursoDao dao = new CursoDao();
		return dao.buscarPorId(Integer.valueOf(id));
		 }


}