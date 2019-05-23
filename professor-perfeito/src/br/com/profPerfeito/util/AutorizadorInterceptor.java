package br.com.profPerfeito.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object controller)
			throws Exception {

		String uri = request.getRequestURI();
		if (uri.contains("resources") || uri.endsWith("professor-perfeito/") || uri.endsWith("efetuarLogin")
				|| uri.endsWith("tela/telaInicial")|| uri.endsWith("rodape")|| uri.endsWith("menu")|| uri.endsWith("cadastroCurso")
				|| uri.endsWith("tela/cadastro") || uri.endsWith("tela/login")|| uri.endsWith("save")|| uri.endsWith("cadastroCurso")
				|| uri.endsWith("saveCurso")|| uri.endsWith("saveMateria") || uri.endsWith("addMateria")|| uri.endsWith("materia")
				|| uri.endsWith("saveSubMateria")|| uri.endsWith("menuProfessor")|| uri.endsWith("menuAluno")|| uri.endsWith("logout")
				|| uri.endsWith("filter")|| uri.endsWith("perfil")) {
			return true;
		}

		if (request.getSession().getAttribute("professorLogado") != null && request.getSession().getAttribute("alunoLogado") != null) {
			return true;
		}

		response.sendRedirect("/professor-perfeito");
		return false;
	}

}
