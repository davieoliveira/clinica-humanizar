# clinica-humanizar
Projeto de um sistema de clinica fictícia voltadas para estudos e a disciplina de projeto integrador no IFRN.

## Requisitos Funcionais (RF)

| **Código** | **Descrição** | **Ator** |
|---|---|---|
| RF01 | O sistema deve permitir que o usuário faça login de acordo com seu perfil (cliente, recepcionista, profissional ou administrador). | Todos |
| RF02 | O sistema deve permitir que o cliente se cadastre. | Cliente/paciente |
| RF03 | O sistema deve permitir que o cliente marque uma consulta escolhendo especialidade, profissional, data e horário. | Cliente/paciente |
| RF04 | O sistema deve permitir que o cliente visualize e cancele suas próprias consultas. | Cliente/paciente |
| RF05 | O sistema deve permitir que a recepcionista visualize, organize, confirme e remarque as consultas de todos os clientes e profissionais. | Recepcionista |
| RF06 | O sistema deve permitir que a recepcionista cancele uma consulta em nome do cliente, quando necessário. | Recepcionista |
| RF07 | O sistema deve permitir que o profissional de saúde visualize sua própria agenda de atendimentos. | Profissional |
| RF08 | O sistema deve permitir que o administrador cadastre, edite e remova profissionais de saúde. | Administrador |
| RF09 | O sistema deve permitir que o administrador cadastre e gerencie as especialidades médicas. | Administrador |
| RF10 | O sistema deve permitir que o administrador gerencie os usuários do sistema (clientes, recepcionistas e profissionais). | Administrador |
| RF11 | O sistema não deve permitir conflito de horário no agendamento. | Sistema |

## Requisitos Não Funcionais (RNF)

| **Código** | **Descrição** |
|---|---|
| RNF01 | O sistema deve ser acessível via navegador web (aplicação web responsiva). |
| RNF02 | O sistema deve possuir controle de acesso por perfil, restringindo cada tela às ações permitidas ao ator correspondente. |
| RNF03 | As senhas dos usuários devem ser armazenadas de forma criptografada. |
| RNF04 | A interface deve ser simples e intuitiva, exigindo o mínimo de treinamento para recepcionistas e administradores. |

### Modelo banco de dados do projeto
![Diagrama do banco de dados](./arquivos%20markdown/modelo-banco.png)

### Modelo caso de uso
![Diagrama do banco de dados](./arquivos%20markdown/Diagrama%20de%20Caso%20de%20uso%20Projeto%20integrador.drawio.png)

