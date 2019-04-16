package br.com.profPerfeito.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProfessorController {

	@RequestMapping("/tela/cadastroCurso")
	public String curso() {		
		
		return "tela/cadastroCurso";
	}

}
