package pe.gob.sigapp.webapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.gob.sigapp.service.services.OperacionesServiceImpl;

@Controller
public class HomeController {

	@Autowired
	private OperacionesServiceImpl operacionesService;

	protected Log logger = LogFactory.getLog(getClass());

	@RequestMapping(value = "home/dashboard", method = RequestMethod.GET)
	public String dashboard(Model model, HttpServletRequest request) {
		request.getSession().setAttribute("menuHeader", "home");
		return "home/dashboard";
	}

}
