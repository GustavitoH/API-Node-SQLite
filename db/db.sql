CREATE TABLE "roles" (
	"idRol"	INTEGER,
	"rol" TEXT,
	"descripcion" TEXT,
	PRIMARY KEY("idRol")
);
CREATE TABLE "usuarios" (
	"cedula" TEXT,
	"nombre" TEXT,
	"apellido" TEXT,
	"correo" TEXT,
	"celular" TEXT,
	"fechaNacimiento" TEXT,
	"edad" INTEGER,
	"idRol" INTEGER,
	FOREIGN KEY("idRol") REFERENCES roles("idRol"),
	PRIMARY KEY("cedula") 
);
CREATE TABLE "reservas" (
	"idReserva" INTEGER,
	"fecha" TEXT,
	"tipoMesa" TEXT,
	"total" NUMERIC,
	"cedula" TEXT,
	FOREIGN KEY("cedula") REFERENCES usuarios("cedula"),
	PRIMARY KEY("idReserva") 
);
CREATE TABLE "platos" (
	"idPlato" INTEGER,
	"plato" TEXT,
	"descripcion" TEXT,
	"precio" TEXT,
	PRIMARY KEY("idPlato")
);
CREATE TABLE "eventos" (
	"idEvento" INTEGER,
	"evento" TEXT,
	"descripcion" TEXT,
	PRIMARY KEY ("idEvento")
);
CREATE TABLE "usuario_evento" (
	"cedula" TEXT,
	"idEvento" INTEGER,
	FOREIGN KEY("cedula") REFERENCES usuarios("cedula"),
	FOREIGN	KEY("idEvento") REFERENCES eventos("idEvento")
);