## PetLink
- Cadastro de usuário
  - Diferença de ong para pessoa física;
- Sidebar(Ong)
  - Funcionalidade de doação;
  - Cadastro de animal para doação (Ong);
- Home
  - Anuncio de animais para doação(Ong);
  - Filtro de pesquisa;
- Funcionalidade "Minha Ong" na qual a instituição consegue verificar anuncios ativos
  - Inativação de anuncio;
  - Edição de anuncio;
  - Cadastro de animal para doação;

PROTOTIPAÇÃO INICIAL ENTIDADE-ATRIBUTO DB

`usuárioAdotante{
  e-mail* NOT NULL ,
  nomeUser NOT NULL ,
  CPF NOT NULL,
  Idade NOT NULL,
  CEP NOT NULL,
   (Estado, Cidade, Bairro, Rua)
  Numero
}`
##
` usuarioOng {
  CNAE NOT NULL,
  Nome NOT NULL,
  CEP NOT NULL,
   (Estado, Cidade, bairro, Rua)
  Telefone NOT NULL ,
  IdOng UNIQUE
}`
##
` animal { 
  idAnimal* NOT NULL,
  Tipo NOT NULL,
  Raça NOT NULL,
  Porte NOT NULL,
  Sexo NOT NULL,
  Nome,
  Status NOT NULL,
  Observação,
  Foto NOT NULL,
}`



