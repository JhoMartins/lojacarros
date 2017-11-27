USE [master]
GO
/****** Object:  Database [LojaCarros]    Script Date: 26/11/2017 22:15:47 ******/
CREATE DATABASE [LojaCarros]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LojaCarros', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LojaCarros.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LojaCarros_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LojaCarros_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LojaCarros] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LojaCarros].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LojaCarros] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LojaCarros] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LojaCarros] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LojaCarros] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LojaCarros] SET ARITHABORT OFF 
GO
ALTER DATABASE [LojaCarros] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [LojaCarros] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LojaCarros] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LojaCarros] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LojaCarros] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LojaCarros] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LojaCarros] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LojaCarros] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LojaCarros] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LojaCarros] SET  ENABLE_BROKER 
GO
ALTER DATABASE [LojaCarros] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LojaCarros] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LojaCarros] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LojaCarros] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LojaCarros] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LojaCarros] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LojaCarros] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LojaCarros] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LojaCarros] SET  MULTI_USER 
GO
ALTER DATABASE [LojaCarros] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LojaCarros] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LojaCarros] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LojaCarros] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LojaCarros] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LojaCarros]
GO
/****** Object:  Table [dbo].[Carro]    Script Date: 26/11/2017 22:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Carro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[modelo] [varchar](50) NOT NULL,
	[marca] [varchar](50) NOT NULL,
	[data_compra] [date] NOT NULL,
	[valor_compra] [date] NOT NULL,
	[exproprietario_id] [int] NOT NULL,
	[cor] [varchar](50) NOT NULL,
	[valor_venda] [nchar](10) NULL,
 CONSTRAINT [PK_Carro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 26/11/2017 22:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[cpf] [varchar](15) NOT NULL,
	[data_nascimento] [date] NOT NULL,
	[endereco] [varchar](50) NOT NULL,
	[bairro] [varchar](50) NOT NULL,
	[cidade] [varchar](50) NOT NULL,
	[estado] [varchar](2) NOT NULL,
	[cep] [varchar](15) NOT NULL,
	[profissao] [varchar](50) NOT NULL,
	[renda_mensal] [decimal](5, 2) NOT NULL,
	[empresa_id] [int] NULL,
	[celular] [varchar](15) NOT NULL,
	[numero_conta] [varchar](10) NOT NULL,
	[agencia] [varchar](10) NOT NULL,
	[banco] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresa]    Script Date: 26/11/2017 22:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[razao_social] [varchar](50) NOT NULL,
	[nome_fantasia] [varchar](50) NOT NULL,
	[cnpj] [varchar](50) NOT NULL,
	[endereco] [varchar](50) NOT NULL,
	[bairro] [varchar](50) NOT NULL,
	[cidade] [varchar](50) NOT NULL,
	[estado] [varchar](2) NOT NULL,
	[cep] [varchar](15) NOT NULL,
	[telefone] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 26/11/2017 22:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](50) NOT NULL,
	[cpf] [varchar](13) NOT NULL,
	[data_nascimento] [date] NOT NULL,
	[endereco] [varchar](50) NOT NULL,
	[bairro] [varchar](50) NOT NULL,
	[cidade] [varchar](50) NOT NULL,
	[cep] [varchar](13) NOT NULL,
	[estado] [varchar](50) NOT NULL,
	[celular] [varchar](13) NULL,
	[telefone] [varchar](13) NULL,
	[estado_civil] [varchar](10) NOT NULL,
	[filhos] [int] NOT NULL,
	[salario_base] [decimal](5, 2) NOT NULL,
	[data_admissao] [date] NULL,
 CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servico]    Script Date: 26/11/2017 22:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servico](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](50) NOT NULL,
	[data_inicio] [date] NOT NULL,
	[data_fim] [nchar](10) NOT NULL,
	[status] [varchar](50) NOT NULL,
	[carro_id] [int] NOT NULL,
	[empresa_id] [int] NOT NULL,
	[finalizado_em] [date] NULL,
	[valor] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Servicos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Venda]    Script Date: 26/11/2017 22:15:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Venda](
	[id] [int] NOT NULL,
	[carro_id] [int] NOT NULL,
	[valor_final] [decimal](18, 2) NOT NULL,
	[data] [date] NOT NULL,
	[cliente_id] [int] NOT NULL,
	[pagamento] [varchar](50) NOT NULL,
	[desconto] [decimal](3, 2) NOT NULL,
	[valor_inicial] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Venda] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[Carro]  WITH CHECK ADD  CONSTRAINT [FK_Carro_Cliente] FOREIGN KEY([exproprietario_id])
REFERENCES [dbo].[Cliente] ([id])
GO
ALTER TABLE [dbo].[Carro] CHECK CONSTRAINT [FK_Carro_Cliente]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Empresa] FOREIGN KEY([empresa_id])
REFERENCES [dbo].[Empresa] ([id])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Empresa]
GO
ALTER TABLE [dbo].[Servico]  WITH CHECK ADD  CONSTRAINT [FK_Servicos_Carro] FOREIGN KEY([carro_id])
REFERENCES [dbo].[Carro] ([id])
GO
ALTER TABLE [dbo].[Servico] CHECK CONSTRAINT [FK_Servicos_Carro]
GO
USE [master]
GO
ALTER DATABASE [LojaCarros] SET  READ_WRITE 
GO
