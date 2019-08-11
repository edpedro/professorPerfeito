package br.com.profPerfeito.controller;

import java.text.Normalizer;
import java.util.List;

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
public class BuscarController {

	@RequestMapping("tela/buscar")
	public String menuBuscar() {

		return "tela/buscar";
	}
	public String removerAcentos(String valorAcentuado){
		   return Normalizer
		          .normalize(valorAcentuado, Normalizer.Form.NFD)
		          .replaceAll("[^\\p{ASCII}]", "");
		}

	@RequestMapping("tela/buscarCurso")
	public String Buscar(Model model, @RequestParam("buscar") String buscar, HttpSession session) {		
		
		
		CursoDao dao = new CursoDao();
		List<Curso> BuscarCurso = dao.buscar(buscar);
		model.addAttribute("BuscarCurso", BuscarCurso);

		AnunciosDao dao1 = new AnunciosDao();
		List<Anuncios> BuscarAnuncios = dao1.buscar(removerAcentos(buscar));
		model.addAttribute("BuscarAnuncios", BuscarAnuncios);	
		
		

		return "tela/buscar";
	}	
	
}
