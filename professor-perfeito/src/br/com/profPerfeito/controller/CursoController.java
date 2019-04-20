package br.com.profPerfeito.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;
import br.com.profPerfeito.model.Professor;
import br.com.profPerfeito.model.ProfessorDao;

@Controller
public class CursoController {

	@RequestMapping("/tela/cadastroCurso")
	public String curso(Model model, @ModelAttribute("idProf") Integer idProf) {
		
		
		//pegar o id atual do professor
		ProfessorDao dao = new ProfessorDao();
		Professor professor = dao.buscarPorId(idProf);
		model.addAttribute("professor", professor);

		
		
		return "tela/cadastroCurso";
	}

	@RequestMapping("tela/saveCurso")
	public ModelAndView save1(Curso curso) {

		CursoDao dao = new CursoDao();
		dao.salvar(curso);
		
		return new ModelAndView("redirect:perfil");

	}
}
