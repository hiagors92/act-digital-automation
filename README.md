# act-digital-automation

## Requisitos

- Python 3.7 ou superior

## Configuração do ambiente

1. Clone o repositório.
2. Acesse o repositório na sua máquina.
3. Copie e cole no console o comando abaixo:

    - **Linux/MacOS**:

      ```bash
      python3 -m venv venv
      source venv/bin/activate
      ```

    - **Windows**:

      ```bash
      python -m venv venv
      venv\Scripts\activate
      ```

4. Execute no console:

    -   ```bash
        pip install -r requirements.txt
        ```

## Execução dos Testes:

    
- **Todos**:
    
    ```bash
    robot features/*
    ```


- **Execução por Cenário**:


    ```bash
     robot features/{NOME_DA_FEATURE.feature}
    ```

## Report

Após executar os testes, será gerado um arquivo report.html que mostrará os resultados.