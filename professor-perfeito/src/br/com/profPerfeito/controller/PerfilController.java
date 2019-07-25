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
import br.com.profPerfeito.model.Usuario;
import br.com.profPerfeito.model.UsuarioDao;

@Controller
public class PerfilController {

	@RequestMapping("tela/perfil")
	public String perfil(HttpServletRequest request, HttpSession session, Model model) {

		Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
		if (usuario == null) {

			return "redirect:/";
		}
		UsuarioDao dao1 = new UsuarioDao();
		Usuario usuario1 = dao1.buscarProfessorID(usuario);
		model.addAttribute("usuario1", usuario1);

		// VERIFICAR SER É ALUNO OU PROFESSOR
		if (usuario1.getTipoUsuario().equalsIgnoreCase("a")) {
			model.addAttribute("alunoPainel", usuario1);
		} else {
			model.addAttribute("professorPainel", usuario1);
		}

		// LISTAR CURSO NA TELA PERFIL
		CursoDao dao = new CursoDao();
		List<Curso> listaCurso = dao.listarCursoPerfil(usuario.getIdusuario());
		model.addAttribute("listaCurso", listaCurso);

		return "tela/perfil";
	}

	// TELA DE ANUNCIO
	@RequestMapping("tela/anunciosPerfil")
	public String anunciosPerfil(HttpServletRequest request, HttpSession session, Model model) {

		Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
		if (usuario == null) {

			return "redirect:/";
		}

		// VERIFICAR SER É ALUNO OU PROFESSOR
		if (usuario.getTipoUsuario().equalsIgnoreCase("a")) {
			model.addAttribute("alunoPainel", usuario);
		} else {
			model.addAttribute("professorPainel", usuario);
		}

		// LISTAR ANUNCIOS E QUANTIDADES DE ANUNCIOS
		AnunciosDao dao1 = new AnunciosDao();
		List<Anuncios> listaAnuncios = dao1.listarAnunciosPerfil(usuario.getIdusuario());
		model.addAttribute("quantidadeAnuncios", listaAnuncios.size());
		model.addAttribute("listaAnuncios", listaAnuncios);

		// LISTAR PRIMEIRO ANUNCIO DE CURSO
		CursoDao dao = new CursoDao();
		List<Curso> listaCurso = dao.listarCursoPerfil(usuario.getIdusuario());
		model.addAttribute("listaCurso", listaCurso);

		return "tela/anunciosPerfil";
	}

	// TELA DE EDITAR PERFIL
	@RequestMapping("tela/editarPerfil")
	public String editarPerfil(Model model, HttpSession session) {

		Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
		if (usuario == null) {

			return "redirect:/";
		}

		// VERIFICAR SER É ALUNO OU PROFESSOR
		if (usuario.getTipoUsuario().equalsIgnoreCase("a")) {
			model.addAttribute("alunoPainel", usuario);
		} else {
			model.addAttribute("professorPainel", usuario);
		}

		// LISTAR USUARIO NA TELA EDITAR PEDRIL
		UsuarioDao dao = new UsuarioDao();
		Usuario usuario1 = dao.buscarPorId(usuario.getIdusuario());
		model.addAttribute("usuario", usuario1);

		return "tela/editarPerfil";
	}

}