package br.com.profPerfeito.controller;

import java.util.List;

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
import br.com.profPerfeito.model.SubMateria;
import br.com.profPerfeito.model.SubMateriaDao;
import br.com.profPerfeito.util.Util;

@Controller
public class CursoController {
	
	//listar materia
	@RequestMapping("/tela/cadastroCurso")
	public String curso(Model model) {
		
		SubMateriaDao dao = new SubMateriaDao();
		List<SubMateria> listaSubMateria = dao.listar(null);
		model.addAttribute("listaSubMateria", listaSubMateria);

		model.addAttribute("listaMateria", new MateriaDao().listar());

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
	public ModelAndView save1(Curso curso, @RequestParam("file") MultipartFile imagem) {
		//IMPLEMENTAÇÃO DA IMAGEM
		if (Util.fazerUploadImagem(imagem)) {
			curso.setImagem(Util.obterMomentoAtual() + " - " + imagem.getOriginalFilename());
		}

		CursoDao dao = new CursoDao();
		dao.salvar(curso);
		return new ModelAndView("redirect:perfil");

	}
}
