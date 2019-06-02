package br.com.profPerfeito.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.profPerfeito.model.Aluno;
import br.com.profPerfeito.model.AlunoDao;
import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;
import br.com.profPerfeito.model.Professor;
import br.com.profPerfeito.model.ProfessorDao;

@Controller
public class SistemaController {

	@RequestMapping("/")
	public String index(Model model) {

		CursoDao dao = new CursoDao();
		List<Curso> listaCurso = dao.listarTelaInicial(3);
		model.addAttribute("listaCurso", listaCurso);

		return "tela/telaInicial";
	}

	@RequestMapping("save")
	public ModelAndView save(Professor professor, Aluno aluno, @RequestParam("estado1") String estado1, Model model,
			HttpServletRequest request,RedirectAttributes redirectAttributes) {

		if (!estado1.equalsIgnoreCase("p")) {

			// cadastrar aluno e redirecionar para tela inicial
			AlunoDao dao = new AlunoDao();
			dao.salvar(aluno);

			return new ModelAndView("redirect:/");
		}

		// cadastrar o professor e redirecionar para tela de curso

		ProfessorDao dao = new ProfessorDao();
		dao.salvar(professor);

		// passa o id atual e enviar o controller do curso
		request.getSession().setAttribute("professor", professor.getIdprofessor());
		
		redirectAttributes.addFlashAttribute("msg", professor.getNome());
		
		
		return new ModelAndView("redirect:tela/cadastroCurso");
	}

	

}
