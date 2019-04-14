package br.com.profPerfeito.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import br.com.profPerfeito.model.Aluno;
import br.com.profPerfeito.model.AlunoDao;
import br.com.profPerfeito.model.Professor;
import br.com.profPerfeito.model.ProfessorDao;

@Controller
public class SistemaController {

	@RequestMapping("/")
	public String index() {

		return "tela/telaInicial";
	}

	@RequestMapping("save")
	public ModelAndView save(Professor professor, Aluno aluno, @RequestParam("estado") String estado) {

			//cadastrar o professor e redirecionar para tela de curso
		if (estado.equalsIgnoreCase("p")) {

			ProfessorDao dao = new ProfessorDao();
			dao.salvar(professor);

			return new ModelAndView("redirect:tela/cadastroCurso");
		}
		
		//cadastrar aluno
		AlunoDao dao = new AlunoDao();
		dao.salvar(aluno);

		return new ModelAndView("redirect:/");
	}
}
