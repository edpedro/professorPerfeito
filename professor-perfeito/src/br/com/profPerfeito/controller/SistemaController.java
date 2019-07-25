package br.com.profPerfeito.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;
import br.com.profPerfeito.model.Materia;
import br.com.profPerfeito.model.MateriaDao;

@Controller
public class SistemaController {

	@RequestMapping("/")
	public String index(Model model) {
		
		// LISTAR 3 CURSO NA TELA INICIAL
		CursoDao dao = new CursoDao();
		List<Curso> listaCurso = dao.listarTelaInicial(3);
		model.addAttribute("listaCurso", listaCurso);		
		
		//LISTAR TODAS AS MATERIA NA TELA INICIAL
		MateriaDao dao4 = new MateriaDao();
		List<Materia> listaTodosMateria  = dao4.listarTodosMateria();
		model.addAttribute("listaTodosMateria", listaTodosMateria.size());;

		return "tela/telaInicial";
	}	

}
