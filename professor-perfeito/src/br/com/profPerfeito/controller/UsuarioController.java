package br.com.profPerfeito.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.profPerfeito.model.Anuncios;
import br.com.profPerfeito.model.AnunciosDao;
import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;
import br.com.profPerfeito.model.Usuario;
import br.com.profPerfeito.model.UsuarioDao;
import br.com.profPerfeito.util.Util;

@Controller
public class UsuarioController {

	@RequestMapping("save")
	public ModelAndView save(Usuario usuario, Model model, HttpServletRequest request,
			RedirectAttributes redirectAttributes) {

		// BUSCAR EMAIL NO BANCO
		UsuarioDao dao = new UsuarioDao();
		List<Usuario> usuarioEmail = dao.buscarEmailUsuario(usuario);

		// VERIFICAR SE EXISTE EMAIL
		if (usuarioEmail.size() != 0) {

			redirectAttributes.addFlashAttribute("msg1", "Email ja está em uso");
			return new ModelAndView("redirect:/");

		} else {

			// Cadastrar o professor
			UsuarioDao dao1 = new UsuarioDao();
			dao1.salvar(usuario);

			if (usuario.getTipoUsuario().equalsIgnoreCase("p")) {

				// PASSA ID PARA TELA CURSO
				request.getSession().setAttribute("usuario", usuario.getIdusuario());

				// PASSA ID PARA TELA CURSO
				redirectAttributes.addFlashAttribute("msg", usuario.getNome());

				return new ModelAndView("redirect:tela/cadastroCurso");

			} else {
				redirectAttributes.addFlashAttribute("msg", "Cadastrado com sucesso!");
				return new ModelAndView("redirect:/");
			}

		}

	}

	// ALTEAR DADOS DO USUARIO
	@RequestMapping("tela/alterarUsuario")
	public String Alterar(Usuario usuario, Model model, RedirectAttributes redirectAttributes,
			@RequestParam("file") MultipartFile imagem, HttpSession session) {

		if (Util.fazerUploadImagem(imagem)) {
			// Imagem nova
			usuario.setImagem(Util.obterMomentoAtual() + " - " + imagem.getOriginalFilename());

		} else {

			// Dados quer não vão ser alterado
			UsuarioDao dao1 = new UsuarioDao();
			Usuario usuario1 = dao1.buscarProfessorID(usuario);
			usuario.setImagem(usuario1.getImagem());
			usuario.setEmail(usuario1.getEmail());
			usuario.setSenha(usuario1.getSenha());
			usuario.setTipoUsuario(usuario1.getTipoUsuario());

			// Alterar dados novos
			UsuarioDao dao2 = new UsuarioDao();
			dao2.alterar(usuario);

			// Atualizar a sessão
			UsuarioDao dao3 = new UsuarioDao();
			Usuario usuarioLogado = dao3.buscarProfessor(usuario);
			session.setAttribute("usuarioLogado", usuarioLogado);
			redirectAttributes.addFlashAttribute("msg", "Dados alterado com sucesso!");

			return "redirect:/tela/editarPerfil";
		}

		// Dados quer não vão ser alterado
		UsuarioDao dao = new UsuarioDao();
		Usuario usuario1 = dao.buscarProfessorID(usuario);
		usuario.setEmail(usuario1.getEmail());
		usuario.setSenha(usuario1.getSenha());
		usuario.setTipoUsuario(usuario1.getTipoUsuario());

		// Alterar dados novos
		UsuarioDao dao1 = new UsuarioDao();
		dao1.alterar(usuario);

		// Atualizar a sessão
		UsuarioDao dao3 = new UsuarioDao();
		Usuario usuarioLogado = dao3.buscarProfessor(usuario);
		session.setAttribute("usuarioLogado", usuarioLogado);
		redirectAttributes.addFlashAttribute("msg", "Dados alterado com sucesso!");

		return "redirect:/tela/editarPerfil";
	}

	@RequestMapping("tela/alterarConta")
	public String alterarConta(Usuario usuario, Model model, RedirectAttributes redirectAttributes,
			@RequestParam String senha, @RequestParam String email, @RequestParam String senhaAntiga,
			HttpSession session) {

		UsuarioDao dao1 = new UsuarioDao();
		Usuario usuario1 = dao1.buscarProfessorID(usuario);

		// verificar ser email e valido
		if (!email.equalsIgnoreCase(usuario1.getEmail())) {

			redirectAttributes.addFlashAttribute("msg1", "Email invalido!");
			return "redirect:/tela/editarPerfil";

		} else {
			// verificar ser a senha e valido
			if (senhaAntiga.equalsIgnoreCase(usuario1.getSenha())) {

				// verificar ser a senha é igua a nova senha
				if (senha.equalsIgnoreCase(usuario1.getSenha())) {

					redirectAttributes.addFlashAttribute("msg1", "Senha e Nova Senha são iguais!");
					return "redirect:/tela/editarPerfil";

				} else {

					usuario.setNome(usuario1.getNome());
					usuario.setEmail(usuario1.getEmail());
					usuario.setImagem(usuario1.getImagem());
					usuario.setCep(usuario1.getCep());
					usuario.setCidade(usuario1.getCidade());
					usuario.setBairro(usuario1.getBairro());
					usuario.setEstado(usuario1.getEstado());
					usuario.setRua(usuario1.getRua());
					usuario.setCelular(usuario1.getCelular());
					usuario.setDataNascimento(usuario1.getDataNascimento());
					usuario.setTelefone(usuario1.getTelefone());
					usuario.setTipoUsuario(usuario1.getTipoUsuario());

					// Alterar dados novos
					UsuarioDao dao = new UsuarioDao();
					dao.alterar(usuario);

					redirectAttributes.addFlashAttribute("msg", "Senha alterada com sucesso!");
					return "redirect:/tela/editarPerfil";
				}

			} else {
				redirectAttributes.addFlashAttribute("msg1", "Senha invalida!");
				return "redirect:/tela/editarPerfil";

			}

		}

	}

	@RequestMapping("tela/exluirConta")
	public String excluirConta(Usuario usuario, Model model, @RequestParam String senha, @RequestParam String email,
			RedirectAttributes redirectAttributes, HttpSession session) {

		// listar professor
		UsuarioDao dao = new UsuarioDao();
		Usuario usuario1 = dao.buscarProfessorID(usuario);

		// listar curso
		CursoDao dao1 = new CursoDao();
		Curso curso = dao1.buscarCursoID(usuario.getIdusuario());

		// LISTAR ANUNCIOS
		AnunciosDao dao2 = new AnunciosDao();
		Anuncios anuncios = dao2.buscarAnunciosID(usuario.getIdusuario());
		
		

		
		// verificar ser email e valido
		if (!email.equalsIgnoreCase(usuario1.getEmail())) {

			redirectAttributes.addFlashAttribute("msg1", "Email invalido!");
			return "redirect:/tela/editarPerfil";

		} else {
			// verificar ser a senha e valida
			if (!senha.equalsIgnoreCase(usuario1.getSenha())) {

				redirectAttributes.addFlashAttribute("msg1", "Senha invalida!");
				return "redirect:/tela/editarPerfil";

			} else {
				// verificar ser professor tem curso
				if (curso != null) {
					// verificar ser professor tem anuncios
					if (anuncios != null) {
						// apagar Professor - Curso - Anuncios
						CursoDao dao3 = new CursoDao();
						dao3.remover(curso.getIdcurso());

						AnunciosDao dao4 = new AnunciosDao();
						dao4.remover(anuncios.getIdanuncios());

						UsuarioDao dao5 = new UsuarioDao();
						dao5.remover(usuario1.getIdusuario());

						session.invalidate();

						redirectAttributes.addFlashAttribute("msg", "Conta Excluida!");
						return "redirect:/";
					} else {
						// apagar Professor - Curso
						CursoDao dao3 = new CursoDao();
						dao3.remover(curso.getIdcurso());

						AnunciosDao dao4 = new AnunciosDao();
						dao4.remover(anuncios.getIdanuncios());

						session.invalidate();

						redirectAttributes.addFlashAttribute("msg", "Conta Excluida!");
						return "redirect:/";

					}

				} else {
					// apagar Professor
					UsuarioDao dao5 = new UsuarioDao();
					dao5.remover(usuario1.getIdusuario());

					session.invalidate();

					redirectAttributes.addFlashAttribute("msg", "Conta Excluida!");
					return "redirect:/";
				}
			}
		}

	}

}
