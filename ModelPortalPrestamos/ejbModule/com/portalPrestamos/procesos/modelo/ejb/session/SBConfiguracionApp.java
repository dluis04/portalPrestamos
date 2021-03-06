package com.portalPrestamos.procesos.modelo.ejb.session;

import java.util.List;

import javax.ejb.EJB;
import javax.ejb.Stateless;

import com.portalPrestamos.estandar.modelo.ejb.session.SBFacadeProcesosLocal;
import com.portalPrestamos.estandar.modelo.excepciones.BaseException;
import com.portalPrestamosl.procesos.modelo.ejb.entity.procesos.ConfiguracionApp;

/**
 * Session Bean implementation class SBConfiguracionApp
 */
@Stateless
public class SBConfiguracionApp implements SBConfiguracionAppLocal {

	@EJB
	SBFacadeProcesosLocal sbFacade;

	/**
	 * Default constructor.
	 */
	public SBConfiguracionApp() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int consultaConfiguracionIntentosInicioSesion(int idConfiguracion) throws BaseException {
		int retornValor = 0;

		String query = "SELECT c.confValor FROM ConfiguracionApp c where c.idConfiguracion='" + idConfiguracion + "' ";

		List listValor = sbFacade.executeQuery(query, null);

		for (int i = 0; i < listValor.size(); i++) {
			retornValor = Integer.parseInt(listValor.get(i) + "");
		}

		return retornValor;
	}

	@Override
	public List<ConfiguracionApp> consultarAllConfiguracionApp() throws BaseException {
		String query = "SELECT c FROM ConfiguracionApp c";
		List<ConfiguracionApp> listConfiguracion = sbFacade.executeQuery(query, null);
		return listConfiguracion;
	}

	@Override
	public ConfiguracionApp modificarParametrizacion(ConfiguracionApp configuracion) throws BaseException {
		ConfiguracionApp x = (ConfiguracionApp) sbFacade.updateEntity(configuracion);
		return x;
	}

}
