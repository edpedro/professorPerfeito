package br.com.profPerfeito.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.profPerfeito.model.Anuncios;
import br.com.profPerfeito.model.AnunciosDao;
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
		//listar curso para tela perfil
		CursoDao dao = new CursoDao();
		List<Curso> listaCurso = dao.listarCursoPerfil(professor.getIdprofessor());
		model.addAttribute("listaCurso", listaCurso);

		return "tela/perfil";
	}
	//Tela anuncios
	@RequestMapping("tela/anunciosPerfil")
	public String anunciosPerfil(HttpServletRequest request, HttpSession session, Model model) {

		Professor professor = (Professor) session.getAttribute("professorLogado");
		if (professor == null) {

			return "redirect:/";
		}
		// listar os Anuncios e quantidades
		AnunciosDao dao1 = new AnunciosDao();
		List<Anuncios> listaAnuncios = dao1.listarAnunciosPerfil(professor.getIdprofessor());
		int quantAnuncios = listaAnuncios.size();
		model.addAttribute("quantidadeAnuncios", quantAnuncios);
		model.addAttribute("listaAnuncios", listaAnuncios);
		
		//listar o primiero anuncios
		CursoDao dao = new CursoDao();
		List<Curso> listaCurso = dao.listarCursoPerfil(professor.getIdprofessor());
		model.addAttribute("listaCurso", listaCurso);

		return "tela/anunciosPerfil";
	}

}