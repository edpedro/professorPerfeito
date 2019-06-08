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
	public ModelAndView save(Aluno aluno, Professor professor, @RequestParam("radio") String radio, Model model,
			HttpServletRequest request, RedirectAttributes redirectAttributes) {

		if (!radio.equalsIgnoreCase("P")) {

			// verificar ser ja existem o EMAIL
			AlunoDao dao2 = new AlunoDao();
			List<Aluno> alunoEmail = dao2.buscarEmailAluno(aluno);

			if (alunoEmail.size() <= 0) {

				// Cadastrar o aluno
				AlunoDao dao = new AlunoDao();
				dao.salvar(aluno);
				redirectAttributes.addFlashAttribute("msg", "Cadastrado com sucesso!");
				return new ModelAndView("redirect:/");
			}
			redirectAttributes.addFlashAttribute("msg1", "Email ja está em uso");
			return new ModelAndView("redirect:/");

		} else {

			// verificar ser ja existem o EMAIL
			ProfessorDao dao3 = new ProfessorDao();
			List<Professor> professorEmail = dao3.buscarEmailProfessor(professor);

			if (professorEmail.size() <= 0) {

				// Cadastrar o professor
				ProfessorDao dao = new ProfessorDao();
				dao.salvar(professor);

				// passa o id atual e enviar o controller do curso
				request.getSession().setAttribute("professor", professor.getIdprofessor());

				// passa o nome atual e enviar o controller do curso
				redirectAttributes.addFlashAttribute("msg", professor.getNome());

				return new ModelAndView("redirect:tela/cadastroCurso");

			} else {
				// enviar messagem para telas
				redirectAttributes.addFlashAttribute("msg1", "Email ja está em uso");

				return new ModelAndView("redirect:/");
			}

		}

	}

}
