# Atualizador do Sistema Linux

Este é um script simples para atualizar um sistema Linux. Ele automatiza o processo de atualização dos pacotes do sistema.

## Funcionalidades

- Atualiza pacotes do sistema usando comandos `apt` (ubuntu, debian, mint...).
- Exibe o progresso da atualização usando o `pv`.
- Fornece uma experiência visual aprimorada usando o `lolcat`.

## Dependências

Este script requer duas dependências:

1. **pv**: Uma ferramenta para monitorar o progresso de dados através de uma canal de dados.
   - Para instalar no Debian/Ubuntu: `bash sudo apt install pv -y`

2. **lolcat**: Uma ferramenta para colorir a saída do terminal.
   - Para instalar no Debian/Ubuntu: `sudo apt install lolcat -y`

## Como Usar

1. Clone este repositório para o seu sistema local.
2. Certifique-se de que as dependências estão instaladas.
3. Execute o script `update_system.sh`.
    ```bash
    $ bash update_system.sh
    ```
    ```bash
    $ ./update_system.sh
    ```

## Nota

Certifique-se de ter privilégios adequados ao executar o script, pois ele pode realizar alterações no sistema.

**Observação:** Este script foi testado no Ubuntu 20.04 e no Debian 12.

## Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir problemas (issues) ou enviar pull requests para melhorias.
email: <giovannizuccolo.on@gmail.com>
