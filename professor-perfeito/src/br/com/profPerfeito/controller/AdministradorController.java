package br.com.profPerfeito.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.profPerfeito.model.Materia;
import br.com.profPerfeito.model.MateriaDao;
import br.com.profPerfeito.model.SubMateria;
import br.com.profPerfeito.model.SubMateriaDao;

@Controller
public class AdministradorController {

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

	// adionar sub materia materia

	@RequestMapping("/administrador/materia")
	public String adicionarSubMateria(Model model) {

		MateriaDao dao = new MateriaDao();
		List<Materia> listaMateria = dao.listar();
		model.addAttribute("listaMateria", listaMateria);
		return "administrador/incluirSubMateria";
	}

	@RequestMapping("/administrador/saveSubMateria")
	public String saveSubMateria(SubMateria subMateria, Model model, RedirectAttributes redirectAttributes) {
		SubMateriaDao dao = new SubMateriaDao();
		dao.salvar(subMateria);

		redirectAttributes.addFlashAttribute("msg", "Sub Materia cadastrada com sucesso");
		return "redirect:materia";

	}

}
