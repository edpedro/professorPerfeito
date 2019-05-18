package br.com.profPerfeito.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
	public String saveMateria(Materia materia, Model model) {
		MateriaDao dao = new MateriaDao();
		dao.salvar(materia);

		model.addAttribute("msg", "Materia cadastrada com sucesso!");
		return "administrador/incluirMateria";
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
	public String saveSubMateria(SubMateria subMateria, Model model) {
		SubMateriaDao dao = new SubMateriaDao();
		dao.salvar(subMateria);

		model.addAttribute("msg", "Sub Materia cadastrada com sucesso!");
		return "administrador/incluirSubMateria";
		
	}

}
