package br.com.profPerfeito.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;
import br.com.profPerfeito.model.Professor;

@Controller
public class PerfilController {

	@RequestMapping("tela/perfil")
	public String perfil(HttpServletRequest request, HttpSession session, Model model) {

		Professor professor = (Professor) session.getAttribute("professorLogado");
		if (professor == null) {

			return "redirect:/";
		}

		CursoDao dao = new CursoDao();
		List<Curso> listaCurso = dao.listarCursoPerfil(professor.getIdprofessor());
		model.addAttribute("listaCurso", listaCurso);

		return "tela/perfil";
	}

	@RequestMapping("tela/anunciosPerfil")
	public String anunciosPerfil(HttpServletRequest request, HttpSession session, Model model) {

		Professor professor = (Professor) session.getAttribute("professorLogado");
		if (professor == null) {

			return "redirect:/";
		}

		CursoDao dao = new CursoDao();
		List<Curso> listaCurso = dao.listarCursoPerfil(professor.getIdprofessor());
		model.addAttribute("listaCurso", listaCurso);

		return "tela/anunciosPerfil";
	}

}