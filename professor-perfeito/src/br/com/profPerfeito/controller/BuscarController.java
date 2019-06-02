package br.com.profPerfeito.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BuscarController {
	
	@RequestMapping("busrcarCurso")
	public String Buscar(Model model) {		

		return "tela/buscar";
	}

}
