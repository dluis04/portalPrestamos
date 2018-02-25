﻿/*================================================================================*/
/* DDL SCRIPT                                                                     */
/*================================================================================*/
/*  Title    :                                                                    */
/*  FileName : MER_Presta.ecm                                                     */
/*  Platform : MySQL 5.6                                                          */
/*  Version  : Concept                                                            */
/*  Date     : lunes, 02 de enero de 2017                                         */
/*================================================================================*/
/*================================================================================*/
/* DROP FOREIGN KEYS                                                              */
/*================================================================================*/

ALTER TABLE ACCIONES_MODULOS DROP FOREIGN KEY FK_ACCIONES_MODULOS_MOD;

ALTER TABLE PRESTAMOS DROP FOREIGN KEY FK_PRESTAMOS_DEUDOR;

ALTER TABLE PRESTAMOS DROP FOREIGN KEY FK_PRESTAMOS_FIADOR;

ALTER TABLE PRESTAMOS DROP FOREIGN KEY FK_PRESTAMOS_USU_EMPLE;

ALTER TABLE DETALLE_CUOTAS DROP FOREIGN KEY FK_DETALLE_CUOTAS_PRESTAMOS;

ALTER TABLE CUOTA_MORA DROP FOREIGN KEY FK_CUOTA_MORA_DETALLE_CUOTAS;

ALTER TABLE NOTAS DROP FOREIGN KEY FK_NOTAS_USUARIOS;

ALTER TABLE NOTAS DROP FOREIGN KEY FK_NOTAS_PRESTAMOS;

ALTER TABLE PAGOS DROP FOREIGN KEY FK_PAGOS_DETALLE_CUOTAS;

ALTER TABLE PERMISOS_USUARIOS DROP FOREIGN KEY FK_PERMISOS_ACCIONES_MODULOS;

ALTER TABLE PERMISOS_USUARIOS DROP FOREIGN KEY FK_PERMISOS_USUARIOS_USU;

ALTER TABLE SESIONES_ACTIVAS DROP FOREIGN KEY FK_SESIONES_ACTIVAS_USUARIOS;

ALTER TABLE STATUS_USUARIO DROP FOREIGN KEY FK_STATUS_USUARIO_USU;

ALTER TABLE TIPO_USUARIO DROP FOREIGN KEY FK_TIPO_USUARIO_USU;

ALTER TABLE USUARIOS_BLOQUEADOS DROP FOREIGN KEY FK_USUARIOS_BLOQUEADOS_TIPOS;

ALTER TABLE USUARIOS_BLOQUEADOS DROP FOREIGN KEY FK_USUARIOS_BLOQUEADOS_USU;

/*================================================================================*/
/* DROP TABLES                                                                    */
/*================================================================================*/

ALTER TABLE MODULOS DROP PRIMARY KEY;

DROP TABLE MODULOS;

ALTER TABLE ACCIONES_MODULOS DROP PRIMARY KEY;

DROP TABLE ACCIONES_MODULOS;

ALTER TABLE CONFIGURACION_APP DROP PRIMARY KEY;

DROP TABLE CONFIGURACION_APP;

ALTER TABLE USUARIOS DROP PRIMARY KEY;

DROP TABLE USUARIOS;

ALTER TABLE PRESTAMOS DROP PRIMARY KEY;

DROP TABLE PRESTAMOS;

ALTER TABLE DETALLE_CUOTAS DROP PRIMARY KEY;

DROP TABLE DETALLE_CUOTAS;

ALTER TABLE CUOTA_MORA DROP PRIMARY KEY;

DROP TABLE CUOTA_MORA;

ALTER TABLE CUOTA_MORA_HIS DROP PRIMARY KEY;

DROP TABLE CUOTA_MORA_HIS;

ALTER TABLE DETALLE_CUOTAS_HIS DROP PRIMARY KEY;

DROP TABLE DETALLE_CUOTAS_HIS;

ALTER TABLE ESTADO DROP PRIMARY KEY;

DROP TABLE ESTADO;

ALTER TABLE LOG_SESIONES DROP PRIMARY KEY;

DROP TABLE LOG_SESIONES;

DROP TABLE NOTAS;

ALTER TABLE PAGOS DROP PRIMARY KEY;

DROP TABLE PAGOS;

ALTER TABLE PAGOS_HIS DROP PRIMARY KEY;

DROP TABLE PAGOS_HIS;

ALTER TABLE PERMISOS_USUARIOS DROP PRIMARY KEY;

DROP TABLE PERMISOS_USUARIOS;

ALTER TABLE PRESTAMOS_HIS DROP PRIMARY KEY;

DROP TABLE PRESTAMOS_HIS;

ALTER TABLE SESIONES_ACTIVAS DROP PRIMARY KEY;

DROP TABLE SESIONES_ACTIVAS;

ALTER TABLE STATUS_USUARIO DROP PRIMARY KEY;

DROP TABLE STATUS_USUARIO;

ALTER TABLE TIPO_USUARIO DROP PRIMARY KEY;

DROP TABLE TIPO_USUARIO;

ALTER TABLE TIPOS_BLOQUEO DROP PRIMARY KEY;

DROP TABLE TIPOS_BLOQUEO;

ALTER TABLE USUARIOS_BLOQUEADOS DROP PRIMARY KEY;

DROP TABLE USUARIOS_BLOQUEADOS;
