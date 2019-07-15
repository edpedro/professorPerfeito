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

		// Alterar dados novos
		ProfessorDao dao1 = new ProfessorDao();
		dao1.alterar(professor);

		// Atualizar a sessão
		ProfessorDao dao3 = new ProfessorDao();
		Professor professorLogado = dao3.buscarProfessor(professor);
		session.setAttribute("professorLogado", professorLogado);
		redirectAttributes.addFlashAttribute("msg", "Dados alterado com sucesso!");

		return "redirect:/tela/editarPerfil";
	}

	@RequestMapping("tela/alterarConta")
	public String alterarConta(Professor professor, Model model, RedirectAttributes redirectAttributes,
			@RequestParam String senha, @RequestParam String email, @RequestParam String senhaAntiga) {

		ProfessorDao dao1 = new ProfessorDao();
		Professor professor1 = dao1.buscarProfessorID(professor);

		if (!email.equalsIgnoreCase(professor1.getEmail())) {

			redirectAttributes.addFlashAttribute("msg1", "Email invalido!");
			return "redirect:/tela/editarPerfil";

		} else {

			if (senhaAntiga.equalsIgnoreCase(professor1.getSenha())) {

				if (senha.equalsIgnoreCase(professor1.getSenha())) {

					redirectAttributes.addFlashAttribute("msg1", "Senha e Nova Senha são iguais!");
					return "redirect:/tela/editarPerfil";

				} else {

					professor.setNome(professor1.getNome());
					professor.setEmail(professor1.getEmail());
					professor.setImagem(professor1.getImagem());
					professor.setCep(professor1.getCep());
					professor.setCidade(professor1.getCidade());
					professor.setBairro(professor1.getBairro());
					professor.setEstado(professor1.getEstado());
					professor.setRua(professor1.getRua());
					professor.setCelular(professor1.getCelular());
					professor.setDataNascimento(professor1.getDataNascimento());
					professor.setTelefone(professor1.getTelefone());

					// Alterar dados novos
					ProfessorDao dao = new ProfessorDao();
					dao.alterar(professor);
					
					redirectAttributes.addFlashAttribute("msg", "Senha alterada com sucesso!");
					return "redirect:/tela/editarPerfil";
				}

			} else {
				redirectAttributes.addFlashAttribute("msg1", "Senha invalida!");
				return "redirect:/tela/editarPerfil";

			}

		}

	}

}
