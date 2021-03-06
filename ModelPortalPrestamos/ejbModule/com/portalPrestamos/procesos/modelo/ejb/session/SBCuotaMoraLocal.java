package com.portalPrestamos.procesos.modelo.ejb.session;

import java.util.List;

import javax.ejb.Local;

import com.portalPrestamosl.procesos.modelo.ejb.entity.procesos.CuotaMora;
import com.portalPrestamosl.procesos.modelo.ejb.entity.procesos.DetalleCuota;
import com.portalPrestamosl.procesos.modelo.ejb.entity.procesos.Usuario;

@Local
public interface SBCuotaMoraLocal {

	public CuotaMora registrarPago(CuotaMora pago) throws Exception;

	public List<CuotaMora> consultarCuotaMoraByCuota(DetalleCuota cuota) throws Exception;

	public CuotaMora modificarPagoCuotaMora(CuotaMora pago) throws Exception;

	public List<CuotaMora> consultarCuotaMorasByDeudorDebe(Usuario deudor) throws Exception;

	public List<CuotaMora> consultarCuotaMorasByDeudorPago(Usuario deudor) throws Exception;

}
