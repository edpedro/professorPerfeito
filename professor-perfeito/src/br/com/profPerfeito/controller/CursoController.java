package br.com.profPerfeito.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;
import br.com.profPerfeito.util.Util;

@Controller
public class CursoController {

	@RequestMapping("/tela/cadastroCurso")
	public String curso(Model model) {

		return "tela/cadastroCurso";
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
