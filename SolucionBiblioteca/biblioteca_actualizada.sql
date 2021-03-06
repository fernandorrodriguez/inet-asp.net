USE [master]
GO
/****** Object:  Database [Biblioteca]    Script Date: 06/01/2020 18:07:22 ******/
CREATE  [Biblioteca]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Biblioteca', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Biblioteca.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Biblioteca_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Biblioteca_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Biblioteca] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Biblioteca].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Biblioteca] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Biblioteca] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Biblioteca] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Biblioteca] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Biblioteca] SET ARITHABORT OFF 
GO
ALTER DATABASE [Biblioteca] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Biblioteca] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Biblioteca] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Biblioteca] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Biblioteca] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Biblioteca] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Biblioteca] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Biblioteca] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Biblioteca] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Biblioteca] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Biblioteca] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Biblioteca] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Biblioteca] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Biblioteca] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Biblioteca] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Biblioteca] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Biblioteca] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Biblioteca] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Biblioteca] SET  MULTI_USER 
GO
ALTER DATABASE [Biblioteca] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Biblioteca] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Biblioteca] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Biblioteca] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Biblioteca] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Biblioteca] SET QUERY_STORE = OFF
GO
USE [Biblioteca]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Biblioteca]
GO
/****** Object:  Table [dbo].[Autores]    Script Date: 06/01/2020 18:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autores](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[FechaNacimiento] [date] NOT NULL,
	[IdPais] [int] NOT NULL,
 CONSTRAINT [PK_Autores] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 06/01/2020 18:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[VistaAutores]    Script Date: 06/01/2020 18:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[VistaAutores]
as
select 
a.ID,
a.Apellido,
a.Nombre,
a.FechaNacimiento,
a.IdPais,
p.Nombre as Pais
from autores as a
inner join Paises as p on p.ID=a.IdPais
GO
/****** Object:  Table [dbo].[Editoriales]    Script Date: 06/01/2020 18:07:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editoriales](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Editoriales] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 06/01/2020 18:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Generos] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 06/01/2020 18:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[ISBN] [varchar](17) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Edicion] [int] NOT NULL,
	[IdGenero] [int] NOT NULL,
	[IdEditorial] [int] NOT NULL,
 CONSTRAINT [PK_Libros] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LibrosAutores]    Script Date: 06/01/2020 18:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LibrosAutores](
	[ISBN] [varchar](17) NOT NULL,
	[IdAutor] [int] NOT NULL,
 CONSTRAINT [PK_LibrosAutores] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC,
	[IdAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Autores] ON 
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (1, N'Borges', N'Jorge Manuel', CAST(N'1899-08-08' AS Date), 5)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (3, N'Cortazar', N'Julio', CAST(N'1943-12-20' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (4, N'Garcia Marquez', N'Gabriel', CAST(N'1917-12-20' AS Date), 6)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (5, N'Bioy Casares', N'Adolfo', CAST(N'1927-12-20' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (7, N'Galeano', N'Eduardo', CAST(N'1971-12-20' AS Date), 2)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (9, N'Vargas Llosa', N'Mario', CAST(N'1954-12-20' AS Date), 5)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (10, N'Benedetti', N'Mario', CAST(N'1923-10-10' AS Date), 3)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (11, N'Paz', N'Octavio', CAST(N'1920-03-31' AS Date), 4)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (12, N'Mistral', N'Gabriela', CAST(N'1889-04-07' AS Date), 2)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (13, N'Allende', N'Isabel', CAST(N'1942-08-02' AS Date), 2)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (14, N'Hernandez', N'Jose', CAST(N'1834-11-10' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (15, N'Arlt', N'Roberto', CAST(N'1900-11-10' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (16, N'Coelho', N'Paulo', CAST(N'1947-11-10' AS Date), 4)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (17, N'Rulfo', N'Juan', CAST(N'1917-12-20' AS Date), 2)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (18, N'Mujica Lainez', N'Manuel', CAST(N'1920-12-26' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (19, N'Sarmiento', N'Domingo', CAST(N'1812-01-12' AS Date), 2)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (20, N'Tofler', N'Alvin', CAST(N'1939-12-26' AS Date), 3)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (24, N'Dominguez', N'Carlos', CAST(N'1991-10-24' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (25, N'Iglesias', N'Camila', CAST(N'1991-04-25' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (26, N'Velasquez', N'Julio', CAST(N'1991-10-24' AS Date), 4)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (27, N'Fernandez', N'Maria Jose', CAST(N'1990-02-02' AS Date), 4)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (28, N'De Mendoza', N'Pedro', CAST(N'1967-01-01' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (30, N'Mereles', N'Matias', CAST(N'2018-01-19' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (31, N'Prodan', N'Lucas', CAST(N'1994-01-01' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (32, N'Moreira', N'Juan', CAST(N'1994-01-01' AS Date), 6)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (33, N'Prado', N'Gilbert', CAST(N'1978-07-07' AS Date), 6)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (34, N'Michelli', N'Fran', CAST(N'1986-05-08' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (35, N'Resero', N'Juan', CAST(N'1980-01-01' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (36, N'Scavuzzo', N'Ivo', CAST(N'1989-05-08' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (37, N'Sacheri', N'Eduardo', CAST(N'1960-05-07' AS Date), 3)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (38, N'Gamarra', N'Natalia', CAST(N'1986-12-07' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (39, N'Bree', N'Karla', CAST(N'1977-01-07' AS Date), 1)
GO
INSERT [dbo].[Autores] ([ID], [Apellido], [Nombre], [FechaNacimiento], [IdPais]) VALUES (40, N'Weiss', N'Brian', CAST(N'1945-05-21' AS Date), 8)
GO
SET IDENTITY_INSERT [dbo].[Autores] OFF
GO
SET IDENTITY_INSERT [dbo].[Generos] ON 
GO
INSERT [dbo].[Generos] ([ID], [Nombre]) VALUES (1, N'Cuentos Infatiles')
GO
INSERT [dbo].[Generos] ([ID], [Nombre]) VALUES (2, N'Ciencia ficcion')
GO
SET IDENTITY_INSERT [dbo].[Generos] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (1, N'Argentina')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (11, N'Canada')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (5, N'Chile')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (6, N'Colombia')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (7, N'España')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (4, N'Panama')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (10, N'Peru')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (3, N'Uruguay')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (8, N'USA')
GO
INSERT [dbo].[Paises] ([ID], [Nombre]) VALUES (2, N'Venezuela')
GO
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Paises_1]    Script Date: 06/01/2020 18:07:23 ******/
ALTER TABLE [dbo].[Paises] ADD  CONSTRAINT [IX_Paises_1] UNIQUE NONCLUSTERED 
(
	[Nombre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Autores]  WITH CHECK ADD  CONSTRAINT [FK_Autores_Paises] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Paises] ([ID])
GO
ALTER TABLE [dbo].[Autores] CHECK CONSTRAINT [FK_Autores_Paises]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Editoriales] FOREIGN KEY([IdEditorial])
REFERENCES [dbo].[Editoriales] ([ID])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Editoriales]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Generos] FOREIGN KEY([IdGenero])
REFERENCES [dbo].[Generos] ([ID])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Generos]
GO
ALTER TABLE [dbo].[LibrosAutores]  WITH CHECK ADD  CONSTRAINT [FK_LibrosAutores_Libros] FOREIGN KEY([ISBN])
REFERENCES [dbo].[Libros] ([ISBN])
GO
ALTER TABLE [dbo].[LibrosAutores] CHECK CONSTRAINT [FK_LibrosAutores_Libros]
GO
ALTER TABLE [dbo].[LibrosAutores]  WITH CHECK ADD  CONSTRAINT [FK_LibrosAutores_LibrosAutores] FOREIGN KEY([IdAutor])
REFERENCES [dbo].[Autores] ([ID])
GO
ALTER TABLE [dbo].[LibrosAutores] CHECK CONSTRAINT [FK_LibrosAutores_LibrosAutores]
GO
/****** Object:  StoredProcedure [dbo].[proc_abm_param]    Script Date: 06/01/2020 18:07:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[proc_abm_param]

/*********************************************************
ABM TABLAS CON ESQUEMA ID(IDENTIDAD) NOMBRE(VARCHAR)
**********************************************************/
/* parametros */
       @Accion VARCHAR(10),
       @Tabla VARCHAR(50),
       @ID int = NULL,
       @Nombre VARCHAR(100) = NULL
AS
/* cuerpo principal del s. procedure*/
BEGIN
	DECLARE @SENTENCIA VARCHAR(200)
    --SELECT
    IF @Accion = 'SELECT'
      BEGIN
          set @sentencia='select * from ' + @Tabla  
      END
    --INSERT
    IF @Accion= 'INSERT'
      BEGIN
           set @sentencia='Insert into '+ @Tabla + '(Nombre) Values ('''+@Nombre+''')' 
      END
    --UPDATE
    IF @Accion = 'UPDATE'
      BEGIN
            set @sentencia='Update '+ @Tabla + ' set Nombre='''+@Nombre+''' where id='+Convert(varchar(4),@id) 
      END
      --DELETE
    IF @Accion = 'DELETE'
      BEGIN
           set @sentencia='Delete '+ @Tabla + ' where id='+Convert(varchar(4),@id) 
      END
execute(@sentencia)

END
GO
USE [master]
GO
ALTER DATABASE [Biblioteca] SET  READ_WRITE 
GO
