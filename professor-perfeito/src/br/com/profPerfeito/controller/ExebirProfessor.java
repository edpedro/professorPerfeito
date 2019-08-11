package br.com.profPerfeito.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.profPerfeito.model.Anuncios;
import br.com.profPerfeito.model.AnunciosDao;
import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;
import br.com.profPerfeito.model.Usuario;

@Controller
public class ExebirProfessor {


	@RequestMapping("/tela/exibir")
	public String exibir(@RequestParam("id") Integer id, Model model, HttpServletRequest request, HttpSession session) {

		// Exibir professor
		AnunciosDao dao1 = new AnunciosDao();
		Anuncios anuncios = dao1.buscarPorId(id);
		model.addAttribute("Exibir", anuncios);
		
		// Exibir curso
		CursoDao dao = new CursoDao();
		Curso curso = dao.buscarPorId(id);
		model.addAttribute("Exibir", curso);		
		
		Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
		//id professor
		if(usuario != null ) {
			model.addAttribute("usuario_idusuario", usuario.getIdusuario());
		}
		
		return "tela/exebirProfessor";

	}
	

}
