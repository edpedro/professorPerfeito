package br.com.profPerfeito.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.profPerfeito.model.Curso;
import br.com.profPerfeito.model.CursoDao;
import br.com.profPerfeito.model.Usuario;
import br.com.profPerfeito.model.UsuarioDao;

@Controller
public class AcesoController {

	@SuppressWarnings("unused")
	@RequestMapping("efetuarLogin")
	public String efetuarLogin(Usuario usuario, HttpSession session, Model model, RedirectAttributes redirectAttributes,
			HttpServletRequest request) {

		// LISTAR USUARIO NA TELA INICIAL
		CursoDao dao1 = new CursoDao();
		List<Curso> listaCurso = dao1.listarTelaInicial(3);
		model.addAttribute("listaCurso", listaCurso);

		// LOGIN DO USUARIO
		UsuarioDao dao3 = new UsuarioDao();
		Usuario usuarioLogado = dao3.buscarProfessor(usuario);

		// LISTAR CURSO PARA VERIFICAÇÃO
		CursoDao dao4 = new CursoDao();
		List<Curso> curso = dao4.listarCursoPerfil(usuarioLogado.getIdusuario());

		if (usuarioLogado != null) {

			if (usuarioLogado.getTipoUsuario().equalsIgnoreCase("p")) {

				if (curso.size() != 0) {

					session.setAttribute("usuarioLogado", usuarioLogado);
					redirectAttributes.addFlashAttribute("msg", "logado com sucesso!");

					return "redirect:/";
				} else {
					request.getSession().setAttribute("usuario", usuarioLogado.getIdusuario());
					redirectAttributes.addFlashAttribute("msg", usuarioLogado.getNome());

					return "redirect:/tela/cadastroCurso";

				}

			} else {

				session.setAttribute("usuarioLogado", usuarioLogado);
				redirectAttributes.addFlashAttribute("msg", "logado com sucesso!");
				return "redirect:/";
			}

		} else {
			redirectAttributes.addFlashAttribute("msg", "logado com sucesso!");
			return "redirect:/";
		}

	}

	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
