package br.com.profPerfeito.converters;

import org.springframework.core.convert.converter.Converter;

import br.com.profPerfeito.model.Materia;
import br.com.profPerfeito.model.MateriaDao;

public class MateriaConverter implements Converter<String, Materia>{
	
	public Materia convert(String id) {
		MateriaDao dao = new MateriaDao();
		return dao.buscarPorId(Integer.valueOf(id));
		 }

}
