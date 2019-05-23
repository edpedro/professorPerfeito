package br.com.profPerfeito.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PerfilController {

	@RequestMapping("/tela/perfil")
	public String perfil() {	
		
		return "tela/perfil";
	}

}
