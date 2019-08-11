package br.com.profPerfeito.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.profPerfeito.model.Pedido;
import br.com.profPerfeito.model.PedidoDao;
import br.com.profPerfeito.model.Usuario;
import br.com.profPerfeito.model.UsuarioDao;

@Controller
public class PedidoController {

	@RequestMapping("tela/savePedido")
	public String save1(Pedido pedido, @RequestParam Integer usuario, HttpServletRequest request, RedirectAttributes redirectAttributes) {
		
		
		
		UsuarioDao dao1 = new UsuarioDao();
		Usuario ResultadoUsuario = dao1.buscarPorId(usuario);
		
		System.out.println("resultado do bacno " +ResultadoUsuario.getCep());
		
		if(ResultadoUsuario.getCep() == null) {
			
			redirectAttributes.addFlashAttribute("msg1", "Favor preencher Endereço");		
			return "redirect:/tela/perfil";
		}
		
		
		//pedido inicial em espera
		pedido.setEspera("espera");
		
		PedidoDao dao = new PedidoDao();
		dao.salvar(pedido);

		redirectAttributes.addFlashAttribute("msg", "Pedido foi solicitado");		
		return "redirect:/tela/perfil";
	}

}
