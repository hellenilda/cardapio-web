# Cardápio Spring

Backend para gerenciamento de cardápio digital desenvolvido com Java e Spring Boot.

---

## Sumário
1. [Tecnologias utilizadas](#tecnologias-utilizadas)
2. [Estrutura do projeto](#estrutura-do-projeto)
3. [Como utilizar a aplicação](#como-utilizar-a-aplicação)
4. [Endpoints da API](#endpoints-da-api)
5. [Autora](#autora)

---

## Tecnologias utilizadas
![Java](https://img.shields.io/badge/Java-262626?style=flat&logo=java&logoColor=f89820)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-262626?style=flat&logo=springboot&logoColor=6db33f)
![Spring Data JPA](https://img.shields.io/badge/Spring_Data_JPA-262626?style=flat&logo=spring&logoColor=6db33f)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-262626?style=flat&logo=postgresql&logoColor=4fafdd)
![Maven](https://img.shields.io/badge/Maven-262626?style=flat&logo=apachemaven&logoColor=fa0a0a)
![Lombok](https://img.shields.io/badge/Lombok-262626?style=flat&logo=lombok&logoColor=red)

---

## Estrutura do projeto

```bash
cardapio/
│
├── src/
│   ├── main/
│   │   ├── java/
│   │   │   └── com.example.cardapio/
│   │   │               ├── CardapioApplication.java      # Classe principal da aplicação Spring Boot
│   │   │               ├── controller/
│   │   │               │   └── FoodController.java       # Controlador REST dos endpoints do cardápio
│   │   │               └── food/
│   │   │                   ├── Food.java                 # Modelo da entidade Food (JPA Entity)
│   │   │                   ├── FoodRepository.java       # Interface de acesso ao banco de dados
│   │   │                   ├── FoodRequestDTO.java       # DTO para requisições
│   │   │                   └── FoodResponseDTO.java      # DTO para respostas
│   │   └── resources/
│   │       └── application.properties                    # Configurações da aplicação
│   └── test/
│       └── java/
│           └── com.example.cardapio/
│               └── CardapioApplicationTests.java         # Testes automatizados
│
├── pom.xml                                               # Gerenciamento de dependências Maven
└── README.md                                             # Documentação do projeto
```

---

## Como utilizar a aplicação

### Pré-requisitos

- **Java 21** ou superior
- **Maven** instalado
- **PostgreSQL** instalado e rodando

### Configurar o banco de dados

1. Crie um banco de dados PostgreSQL chamado `food`:
```sql
CREATE DATABASE food;
```

2. Configure as credenciais no arquivo `src/main/resources/application.properties` se necessário:
```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/food
spring.datasource.username=username
spring.datasource.password=password
```

### Clonar o repositório

```bash
git clone https://github.com/hellenilda/cardapio-web.git
cd cardapio-web
```

### Executar a aplicação
Execute a aplicação na sua IDE ou utilize o comando:
```bash
mvn spring-boot:run
```

A API estará disponível em `http://localhost:8080`

---

## Endpoints da API

### Listar todos os itens do cardápio
- **GET** `/food`
- **Resposta**: Array de objetos Food

### Criar um novo item no cardápio
- **POST** `/food`
- **Body**: 
```json
{
  "title": "title",
  "price": 0,
  "image": "URL"
}
```

### Atualizar um item existente
- **PUT** `/food/{id}`
- **Body**: 
```json
{
  "title": "title",
  "price": 0,
  "image": "URL"
}
```

### Remover um item do cardápio
- **DELETE** `/food/{id}`

### Estrutura de resposta

```json
{
  "id": 1,
  "title": "title",
  "price": 0,
  "image": "URL"
}
```

---

## Autora

<table>
    <tr>
        <td align="center">
            <a href="https://github.com/hellenilda">
                <img src="https://avatars.githubusercontent.com/u/109177631?v=4" width="100px;" alt="Hellen Araujo"/><br>
                <sub>
                    <b>Hellen Araujo</b>
                </sub>
            </a>
        </td>
    </tr>
</table>
