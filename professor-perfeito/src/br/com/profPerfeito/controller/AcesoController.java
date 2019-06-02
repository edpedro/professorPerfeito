package br.com.profPerfeito.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.profPerfeito.model.Aluno;
import br.com.profPerfeito.model.AlunoDao;
import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;
import br.com.profPerfeito.model.Professor;
import br.com.profPerfeito.model.ProfessorDao;

@Controller
public class AcesoController {

	@RequestMapping("efetuarLogin")
	public String efetuarLogin(Aluno aluno, Professor professor, HttpSession session, Model model, RedirectAttributes redirectAttributes) {
		//LISTAR PROFESSOR NA TELA INICIAL
		CursoDao dao1 = new CursoDao();
		List<Curso> listaCurso = dao1.listarTelaInicial(3);
		model.addAttribute("listaCurso", listaCurso);

		AlunoDao dao2 = new AlunoDao();
		Aluno alunoLogado = dao2.buscarUsuario(aluno);

		if (alunoLogado != null) {
			session.setAttribute("alunoLogado", alunoLogado);
			model.addAttribute("msg", "logado com sucesso!");
			return "tela/telaInicial";
		}

		ProfessorDao dao3 = new ProfessorDao();
		Professor professorLogado = dao3.buscarProfessor(professor);
		

		if (professorLogado != null) {
			session.setAttribute("professorLogado", professorLogado);
			redirectAttributes.addFlashAttribute("msg", "logado com sucesso!");
			
			return "redirect:/";
		}	
		
		redirectAttributes.addFlashAttribute("msg", "login ou senha invalida");
		return "redirect:/";
	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}
