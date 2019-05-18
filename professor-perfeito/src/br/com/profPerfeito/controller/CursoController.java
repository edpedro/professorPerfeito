package br.com.profPerfeito.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;
import br.com.profPerfeito.model.MateriaDao;
import br.com.profPerfeito.model.Professor;
import br.com.profPerfeito.model.ProfessorDao;
import br.com.profPerfeito.model.SubMateria;
import br.com.profPerfeito.model.SubMateriaDao;
import br.com.profPerfeito.util.Util;

@Controller
public class CursoController {
	
	//listar materia
	@RequestMapping("/tela/cadastroCurso")
	public String curso(Model model, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SubMateriaDao dao = new SubMateriaDao();
		List<SubMateria> listaSubMateria = dao.listar(null);
		model.addAttribute("listaSubMateria", listaSubMateria);

		model.addAttribute("listaMateria", new MateriaDao().listar());
		
		int id = (int) request.getSession().getAttribute("professor");
		
		ProfessorDao dao1 = new ProfessorDao();
		Professor professor1 = dao1.buscarPorId(id);
		model.addAttribute("professor1", professor1);
		
		
		return "tela/cadastroCurso";
	}
	
	//listar subMateria - ajax
	@RequestMapping(value = "/tela/filter", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String filtrarMateria(@RequestParam Integer idMateria, Model model) {
		
		SubMateriaDao dao = new SubMateriaDao();
		List<SubMateria> listaSubMateria = dao.listar(idMateria);		
		return new Gson().toJson(listaSubMateria);
	}
	

	@RequestMapping("tela/saveCurso")
	public ModelAndView save1(Curso curso, Professor professor, @RequestParam("file") MultipartFile imagem) {
		//IMPLEMENTAÇÃO DA IMAGEM
		if (Util.fazerUploadImagem(imagem)) {
			professor.setImagem(Util.obterMomentoAtual() + " - " + imagem.getOriginalFilename());
		}
		
		

		CursoDao dao = new CursoDao();
		dao.salvar(curso);
		
		ProfessorDao dao1 = new ProfessorDao();
		dao1.alterar(professor);
		return new ModelAndView("redirect:perfil");

	}
}
