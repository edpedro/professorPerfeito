package br.com.profPerfeito.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.profPerfeito.model.Anuncios;
import br.com.profPerfeito.model.AnunciosDao;
import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;

@Controller
public class ExebirProfessor {		
		
		@RequestMapping("/tela/exibir")
		public String exibir(@RequestParam("id") Integer id, Model model){
			
		AnunciosDao dao1 = new AnunciosDao();
		Anuncios anuncios = dao1.buscarPorId(id);
		model.addAttribute("ExibirProfessor", anuncios);	
		
		CursoDao dao = new CursoDao();
		Curso curso = dao.buscarPorId(id);
		model.addAttribute("ExibirProfessor", curso);	
		return "tela/professor/exebirProfessor";
		
		}
		
		
	

}
