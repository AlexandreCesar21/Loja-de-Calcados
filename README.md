# Sistema de Gerenciamento de Funcionários de Loja de Calçados

---

## Descrição

Este projeto utiliza **MySQL** para criar e gerenciar um banco de dados de uma loja de calçados. O sistema organiza informações sobre funcionários, seus cargos e salários, permitindo consultas relacionais entre as tabelas.

---

## Estrutura do Banco de Dados

### 1. Banco de Dados
- **Nome:** `loja_de_calçados`

---

### 2. Tabelas Criadas

#### 2.1. **Tabela `funcionarios`**
Armazena informações sobre os funcionários da loja.

| Campo            | Tipo         | Descrição                        |
|-------------------|--------------|----------------------------------|
| `id`             | INT (PK, AI) | Identificador único do funcionário |
| `funcionarios`   | VARCHAR(50)  | Nome do funcionário              |
| `cpf`            | VARCHAR(14)  | CPF do funcionário               |

##### Operações:
- **Inserção de Dados:**
  ```sql
  insert into funcionarios(id, funcionarios, cpf) values 
  (1, 'Allan', '111.111.111-11'),
  (2, 'Júlia', '222.222.222-22'),
  (3, 'Larissa', '333.333.333-33'),
  (4, 'Adam', '444.444.444-44'),
  (5, 'Julios', '555.555.555-55');


<p><b>2.2. Tabela </b><code>cargos</code></p>
<p>Registra os cargos ocupados pelos funcionários.</p>


<table>
        <thead>
            <th>Campo</th>
            <th>Tipo</th>
            <th>Descrição</th>
        </thead>
        <tbody>
            <tr>
                <td><code>id</code></td>
                <td>INT (PK, AI)</td>
                <td>Identificador único</td>
            </tr>
            <tr>
                <td><code>cargo</code></td>
                <td>VARCHAR(45)</td>
                <td>Cargo do funcionário</td>
            </tr>
        </tbody>
    </table>



<p><b>Operações:</b></p>

<p>• <b>Inserção de dados:</b></p>

```
insert into cargos(id, cargo) values 
(1, 'Gerente'),
(2, 'Caixa'),
(3, 'Atendente'),
(4, 'Atendente'),
(5, 'Atendente');
```


<p><b>2.3. Tabela </b><code>salarios</code></p>

<p>Contém os salários de cada funcionário.</p>


<table>
        <thead>
            <th>Campo</th>
            <th>Tipo</th>
            <th>Descrição</th>
        </thead>
        <tbody>
            <tr>
                <td><code>id</code></td>
                <td>INT (PK, AI)</td>
                <td>Identificador único</td>
            </tr>
            <tr>
                <td><code>salario</code></td>
                <td>DOUBLE</td>
                <td>Salário do funcionário</td>
            </tr>
        </tbody>
    </table>



<p><b>Operações:</b></p>

<p>• <b>Inserção de dados:</b></p>

```
insert into salarios(id, salario) values 
(1, 5000),
(2, 1500),
(3, 1100),
(4, 1100),
(5, 1100);
```

<h2>3. Consultas Realizadas</h2>


<p><b>3.1. Exibir Funcionários com seus Cargos</b></p>

<p>Consulta que retorna os dados dos funcionários junto com os cargos que ocupam:</p>

```
select * 
from funcionarios 
join cargos on funcionarios.id = cargos.id;
```

<p><b>3.2. Exibir Funcionários com seus Salários</b></p>

<p>Consulta que retorna os dados dos funcionários com seus respectivos salários:</p>


```
select * 
from funcionarios 
join salarios on funcionarios.id = salarios.id;
```

<h1>Observações</h1>

<p>• <b>Chaves Primárias e Estrangeiras: </b>As tabelas estão relacionadas por meio do campo <code>id</code>, garantindo a integridade referencial dos dados.</p>

<p>• <b>Consultas Relacionais: </b>O uso de <code>JOIN</code> permite combinar informações de diferentes tabelas para exibições completas.</p>

