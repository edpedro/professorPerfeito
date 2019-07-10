package br.com.profPerfeito.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.profPerfeito.model.Materia;
import br.com.profPerfeito.model.MateriaDao;

@Controller
public class MateriaController {
	

	// materia
	@RequestMapping("/administrador/addMateria")
	public String adicionarMateria() {

		return "administrador/incluirMateria";
	}

	@RequestMapping("/administrador/saveMateria")
	public String saveMateria(Materia materia, Model model, RedirectAttributes redirectAttributes) {
		MateriaDao dao = new MateriaDao();
		dao.salvar(materia);

		redirectAttributes.addFlashAttribute("msg", "Materia cadastrada com sucesso!");
		return "redirect:addMateria";
	}

}
