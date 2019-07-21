package br.com.profPerfeito.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.profPerfeito.model.Anuncios;
import br.com.profPerfeito.model.AnunciosDao;
import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;
import br.com.profPerfeito.model.MateriaDao;
import br.com.profPerfeito.model.Professor;
import br.com.profPerfeito.model.SubMateria;
import br.com.profPerfeito.model.SubMateriaDao;

@Controller
public class AnunciosController {

	// Editar Anuncio
	@RequestMapping("/tela/edit")
	public String edit(@RequestParam("idAnuncio") Integer idAnuncio, Model model) {

		SubMateriaDao dao = new SubMateriaDao();
		List<SubMateria> listaSubMateria = dao.listar(null);
		model.addAttribute("listaSubMateria", listaSubMateria);

		model.addAttribute("listaMateria", new MateriaDao().listar());

		CursoDao dao1 = new CursoDao();
		Curso curso = dao1.buscarPorId(idAnuncio);
		model.addAttribute("editarAnuncio", curso);
		return "tela/editarAnuncio";
	}

	// Atualizar Anuncio
	@RequestMapping("/tela/update")
	public String update(Curso curso, Model model, RedirectAttributes redirectAttributes) {
		CursoDao dao = new CursoDao();
		dao.alterar(curso);
		redirectAttributes.addFlashAttribute("msg", "Anuncio Alterado com Sucesso!");
		return "redirect:perfil";
	}

	@RequestMapping("/tela/anuncios")
	public String adicionarAnuncios(Model model, HttpSession session, HttpServletRequest request) {

		Professor professor = (Professor) session.getAttribute("professorLogado");
		if (professor == null) {

			return "redirect:/";
		}	
				
		
		//id professor
		model.addAttribute("professor", professor.getIdprofessor());
		
		//listar materia e sub materia
		SubMateriaDao dao = new SubMateriaDao();
		List<SubMateria> listaSubMateria = dao.listar(null);
		model.addAttribute("listaSubMateria", listaSubMateria);

		model.addAttribute("listaMateria", new MateriaDao().listar());

		return "tela/criarAnuncios";
	}

	@RequestMapping("/tela/salvaAnuncios")
	public String save(Anuncios anuncios, RedirectAttributes redirectAttributes) {

		AnunciosDao dao = new AnunciosDao();
		dao.salvar(anuncios);

		redirectAttributes.addFlashAttribute("msg", "Anuncio cadastrado com sucesso!");
		return "redirect:/tela/perfil";
	}
	@RequestMapping("/tela/delete")
	public String detelte(@RequestParam("idDelete") Integer idDelete, Model model, RedirectAttributes redirectAttributes) {

		AnunciosDao dao = new AnunciosDao();
		dao.remover(idDelete);

		redirectAttributes.addFlashAttribute("msg", "Anuncio deletado com sucesso!");
		return "redirect:/tela/perfil";
	}
	

	
	
}
