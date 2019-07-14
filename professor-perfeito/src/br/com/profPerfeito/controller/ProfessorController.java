package br.com.profPerfeito.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.profPerfeito.model.Professor;
import br.com.profPerfeito.model.ProfessorDao;
import br.com.profPerfeito.util.Util;

@Controller
public class ProfessorController {

	@RequestMapping("tela/editarPerfil")
	public String editarPerfil(Model model, HttpSession session) {

		Professor professor = (Professor) session.getAttribute("professorLogado");
		if (professor == null) {

			return "redirect:/";
		}
		// listar professor
		ProfessorDao dao = new ProfessorDao();
		Professor professor1 = dao.buscarPorId(professor.getIdprofessor());
		model.addAttribute("professor", professor1);
		// ProfessorDao dao = new ProfessorDao();
		// List<Professor> listaProfessor =
		// dao.listarProfessorEditarPerfil(professor.getIdprofessor());
		// System.out.println(listaProfessor);
		// model.addAttribute("listaProfessor", listaProfessor);

		return "tela/editarPerfil";
	}

	@RequestMapping("tela/alterarProfessor")
	public String Alterar(Professor professor, Model model, RedirectAttributes redirectAttributes,
			@RequestParam("file") MultipartFile imagem, HttpSession session) {

		if (Util.fazerUploadImagem(imagem)) {
			// Imagem nova
			professor.setImagem(Util.obterMomentoAtual() + " - " + imagem.getOriginalFilename());

		} else {

			// Dados quer não vão ser alterado
			ProfessorDao dao1 = new ProfessorDao();
			Professor professor1 = dao1.buscarProfessorID(professor);
			professor.setImagem(professor1.getImagem());
			professor.setEmail(professor1.getEmail());
			professor.setSenha(professor1.getSenha());
		}
		
		// Dados quer não vão ser alterado
		ProfessorDao dao = new ProfessorDao();
		Professor professor1 = dao.buscarProfessorID(professor);		
		professor.setEmail(professor1.getEmail());
		professor.setSenha(professor1.getSenha());
		
		//Alterar dados novos
		ProfessorDao dao1 = new ProfessorDao();
		dao1.alterar(professor);
		
		//Atualizar a sessão
		ProfessorDao dao3 = new ProfessorDao();
		Professor professorLogado = dao3.buscarProfessor(professor);
		session.setAttribute("professorLogado", professorLogado);
		redirectAttributes.addFlashAttribute("msg", "Dados alterado com sucesso!");

		return "redirect:/tela/editarPerfil";
	}

}
