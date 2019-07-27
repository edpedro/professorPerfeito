package br.com.profPerfeito.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;

import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;
import br.com.profPerfeito.model.MateriaDao;
import br.com.profPerfeito.model.SubMateria;
import br.com.profPerfeito.model.SubMateriaDao;
import br.com.profPerfeito.model.Usuario;
import br.com.profPerfeito.model.UsuarioDao;
import br.com.profPerfeito.util.Util;

@Controller
public class CursoController {

	// listar materia
	@RequestMapping("/tela/cadastroCurso")
	public String curso(Model model) {

		SubMateriaDao dao = new SubMateriaDao();
		List<SubMateria> listaSubMateria = dao.listar(null);
		model.addAttribute("listaSubMateria", listaSubMateria);

		model.addAttribute("listaMateria", new MateriaDao().listar());

		return "tela/cadastroCurso";
	}

	// listar subMateria - ajax
	@RequestMapping(value = "/tela/filter", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public @ResponseBody String filtrarMateria(@RequestParam Integer idMateria, Model model) {

		SubMateriaDao dao = new SubMateriaDao();
		List<SubMateria> listaSubMateria = dao.listar(idMateria);
		return new Gson().toJson(listaSubMateria);
	}

	// Salvar curso
	@RequestMapping("tela/saveCurso")
	public String save1(Curso curso, Usuario usuario, @RequestParam("file") MultipartFile imagem,
			HttpServletRequest request, RedirectAttributes redirectAttributes) {
		// IMPLEMENTAÇÃO DA IMAGEM

		if (Util.fazerUploadImagem(imagem)) {
			usuario.setImagem(Util.obterMomentoAtual() + " - " + imagem.getOriginalFilename());
		}

		CursoDao dao1 = new CursoDao();
		dao1.salvar(curso);

		UsuarioDao dao2 = new UsuarioDao();
		dao2.alterar(usuario);	

		redirectAttributes.addFlashAttribute("msg", "Cadastrado com sucesso!");
		return "redirect:/";
	}

}
