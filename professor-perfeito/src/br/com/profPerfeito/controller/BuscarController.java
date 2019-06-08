package br.com.profPerfeito.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;

@Controller
public class BuscarController {
	
	@RequestMapping("tela/buscarCurso")
	public String Buscar(Model model, @RequestParam("buscar") String buscar) {
		
		CursoDao dao = new CursoDao();
		List<Curso> BuscarCurso = dao.buscar(buscar);
		model.addAttribute("BuscarCurso", BuscarCurso);
		
		
		return "tela/buscar";
	}

}
