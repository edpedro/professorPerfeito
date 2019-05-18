package br.com.profPerfeito.converters;

import org.springframework.core.convert.converter.Converter;

import br.com.profPerfeito.model.Professor;
import br.com.profPerfeito.model.ProfessorDao;

public class ProfessorConverter implements Converter<String, Professor> {
	
	public Professor convert(String id) {
		ProfessorDao dao = new ProfessorDao();
		return dao.buscarPorId(Integer.valueOf(id));
		 }


}
